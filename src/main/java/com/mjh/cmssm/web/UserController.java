package com.mjh.cmssm.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mjh.cmssm.domain.LoginUser;
import com.mjh.cmssm.domain.User;
import com.mjh.cmssm.domain.UserExtend;
import com.mjh.cmssm.dto.Msg;
import com.mjh.cmssm.service.ILoginUserService;
import com.mjh.cmssm.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired private IUserService userService;
	@Autowired private ILoginUserService iLoginUserService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	   SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	   dateFormat.setLenient(false);
	   binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
	
	@RequestMapping(value = "/reg", method = RequestMethod.POST)
    public String addUser(HttpServletRequest request){
		String uname = request.getParameter("lName");
		String upwd = request.getParameter("lPwd");
		String code = request.getParameter("code");
		String sCode = (String) request.getSession().getAttribute("sCode");
		if(!code.equalsIgnoreCase(sCode)){
			request.setAttribute("msg", "验证码输入错误！");
			System.out.println("验证码输入错误");
			return "app/register";
		}
    	if(!uname.trim().equals("") && !upwd.trim().equals("")) {
    		LoginUser loginUser = new LoginUser();
    		loginUser.setlName(uname);
    		// MD5进行密码加密
    		loginUser.setlPwd(DigestUtils.md5DigestAsHex(upwd.getBytes()));
    		iLoginUserService.insert(loginUser);
    		request.setAttribute("msg", "注册成功！");
			System.out.println("注册成功");
    		return "app/login";
    	}else {
    		request.setAttribute("msg", "请正确填写！");
			System.out.println("请正确填写");
			return "app/register";
		}
    }
	
	@RequestMapping(value = "/login", method= RequestMethod.POST)
    public String userLogin(HttpServletRequest request) {
		String uname = request.getParameter("lName");
		String upwd = request.getParameter("lPwd");
		String noLogin = request.getParameter("noLogin");
		String code = request.getParameter("code");
		String sCode = (String) request.getSession().getAttribute("sCode");
		if(!code.equalsIgnoreCase(sCode)){
			request.setAttribute("msg", "验证码输入错误！");
			System.out.println("验证码输入错误");
			return "app/login";
		}
		System.out.println("登录名："+uname);
		LoginUser loginUser = iLoginUserService.selectgetUserByName(uname);
		if(loginUser == null) {
			request.setAttribute("msg", "登录名输入错误！");
			System.out.println("登录名输入错误");
			return "app/login";
		}
		//用户名和密码都正确，正常登录
        if (loginUser != null && (loginUser.getlPwd()).equals(DigestUtils.md5DigestAsHex(upwd.getBytes()))) {
        	switch (noLogin) {
			case "3hour":
				setSession(request, "username", uname, 3*60);
				break;
			case "3day":
				setSession(request, "username", uname, 3*24*60);
				break;
			case "7day":
				setSession(request, "username", uname, 7*24*60);
				break;
			default:
				setSession(request, "username", uname, 3);
			}
			return "app/index";
        } else {
        	request.setAttribute("msg", "密码输入错误！");
			System.out.println("密码输入错误");
			return "app/login";
        }
    }
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		
		PageHelper.startPage(pn, 5);
		List<UserExtend> users = userService.selectAll();
//		for (UserExtend userExtend : users) {
//			System.out.println("所有："+userExtend);
//		}
		//连续显示的页数是5页
		PageInfo<UserExtend> pageInfo = new PageInfo<UserExtend>(users, 5);
		System.out.println(pageInfo);
//		for (UserExtend userExtend : users) {
//			System.out.println("所有用户："+userExtend);
//		}
		model.addAttribute("pageInfo", pageInfo);
		return "admin/userlist";
	}
	
	/**
	 * 单个和批量删除
	 * @param ids
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/del/{hid}", method = RequestMethod.DELETE)
	public Msg del(@PathVariable("hid") String ids) {
		System.out.println(ids);
		if (!ids.contains(",")) {
            userService.deleteByPrimaryKey(Integer.parseInt(ids));
        } else {
            String[] idArr = ids.split(",");
            for (String idStr : idArr) {
            	userService.deleteByPrimaryKey(Integer.parseInt(idStr));
            }
        }
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value = "/update/{hid}", method = RequestMethod.PUT)
	public Msg update(User house) {
		userService.updateByPrimaryKey(house);
		return Msg.success();
	}
	
	@ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public Msg save(User user) {
		System.out.println("wer"+user);
        userService.insert(user);
        return Msg.success();
    }
	
	@ResponseBody
    @RequestMapping(value = "/validateName")
    public Msg validateHcode(@RequestParam("ucode") String ucode) {
        boolean result = userService.validateHcode(ucode);
        // 返回TRUE，业主编号可用
        if (result) {
            return Msg.success();
        }
        return Msg.fail();
    }
	
	protected void setSession(HttpServletRequest request, String key, String value, int timeNum) {
		HttpSession session = request.getSession();
		session.setAttribute(key, value);
		session.setMaxInactiveInterval(timeNum*60);
	}
}
