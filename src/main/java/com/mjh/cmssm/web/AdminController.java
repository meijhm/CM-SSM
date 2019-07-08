package com.mjh.cmssm.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mjh.cmssm.domain.Admin;
import com.mjh.cmssm.service.IAdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired private IAdminService adminService;
	
	@RequestMapping("/myworld")
    public String myWorld(){
        return "admin/myworld";
    }
	
	@RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "admin/login";
    }
	
	@ResponseBody
	@RequestMapping(value = "/getinfo", method = RequestMethod.GET)
	public Admin getInfo(HttpServletRequest request) {
		String adminname = (String) request.getSession().getAttribute("adminname");
		Admin admin = adminService.getAdminByName(adminname);
		System.out.println("admin:"+admin);
		return admin;
	}
	
	@RequestMapping("/showinfo")
	public String showInfo(String type, HttpServletRequest request) {
		System.out.println(type);
        if(type != null && type.equals("1")) {
        	request.setAttribute("msg", "验证码输入错误！");
        } else {
            request.setAttribute("msg", "注册失败！");
        }
        return "reg";
	}
	
	@RequestMapping("/login")
	public String doLogin(HttpServletRequest request, HttpServletResponse response, Model model) {
		String aname = request.getParameter("aName");
		String apwd = request.getParameter("aPwd");
		String noLogin = request.getParameter("noLogin");
		String code = request.getParameter("code");
		String sCode = (String) request.getSession().getAttribute("sCode");
		if(!code.equalsIgnoreCase(sCode)){
			request.setAttribute("msg", "验证码输入错误！");
			System.out.println("验证码输入错误");
			return "admin/login";
		}
		Admin admin = adminService.getAdminByName(aname);
		if(admin == null) {
			request.setAttribute("msg", "登录名输入错误！");
			System.out.println("登录名输入错误");
			return "admin/login";
		}
		if (admin.getApwd().equals(apwd)) {
			switch (noLogin) {
			case "3hour":
				setSession(request, "adminname", aname, 3*60);
				break;
			case "3day":
				setSession(request, "adminname", aname, 3*24*60);
				break;
			case "7day":
				setSession(request, "adminname", aname, 7*24*60);
				break;
			default:
				setSession(request, "adminname", aname, 3);
			}
			return "admin/index";
		}else {
			request.setAttribute("msg", "密码输入错误！");
			System.out.println("密码输入错误");
			return "admin/login";
		}
		/*for (Admin admin : admins) {
			if (admin.getAname().equals(aname) && admin.getApwd().equals(apwd)) {
				switch (noLogin) {
				case "3hour":
					setSession(request, "uname", aname, 3*60);
					break;
				case "3day":
					setSession(request, "uname", aname, 3*24*60);
					break;
				case "7day":
					setSession(request, "uname", aname, 7*24*60);
					break;
				default:
					setSession(request, "uname", aname, 3);
				}
				return "admin/index";
			}
		}
		request.setAttribute("msg", "该管理员不存在！");
		return "admin/login";*/
	}

	
	private void setSession(HttpServletRequest request, String key, String value, int timeNum) {
		HttpSession session = request.getSession();
		session.setAttribute(key, value);
		session.setMaxInactiveInterval(timeNum*60);
	}
	
	
}
