package com.mjh.cmssm.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
import org.springframework.web.servlet.ModelAndView;

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
    public String addUser(LoginUser loginUser){
    	if(loginUser != null) {
    		// MD5进行密码加密
    		loginUser.setLpwd(DigestUtils.md5DigestAsHex(loginUser.getLpwd().getBytes()));
    		iLoginUserService.insert(loginUser);
    	}
        return "app/login";
    }
	
	@RequestMapping(value = "/login", method= RequestMethod.POST)
    public ModelAndView userLogin(String username, String password, HttpSession session, ModelAndView model) {
		if(iLoginUserService.selectByUserName(username) == 0) {
			model.addObject("message","登录名错误，请重新输入");
            model.setViewName("app/login");
            return model;
		}
		//用户名和密码都正确，正常登录
		LoginUser loginUser = iLoginUserService.selectgetUserByName(username);
        if (loginUser != null && (loginUser.getLpwd()).equals(DigestUtils.md5DigestAsHex(password.getBytes()))) {
            //将用户名保存在session中
            session.setAttribute("username", loginUser.getLname());
            model.setViewName("app/index");
            return model;
        } else {
            //用户名正确但是密码错误
            model.addObject("message","密码错误，请重新输入");
            model.setViewName("app/login");
        }
		return model;
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
		if (ids.indexOf(",") == -1) {
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
}
