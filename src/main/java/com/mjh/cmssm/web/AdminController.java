package com.mjh.cmssm.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public Admin getInfo(HttpSession session) {
		String adminname = (String) session.getAttribute("adminname");
		adminname = "admin";
		Admin admin = adminService.getAdminByName(adminname);
		System.out.println("dsfd"+admin);
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
	
	@RequestMapping("/doLogin")
	public String doLogin(HttpServletRequest request, HttpServletResponse response) {
		String aname = request.getParameter("aName");
		String apwd = request.getParameter("aPwd");
		String noLogin = request.getParameter("noLogin");
		String code = request.getParameter("code");
		String sCode = (String) request.getSession().getAttribute("sCode");
		//PrintWriter out = response.getWriter();;
		if(!code.equalsIgnoreCase(sCode)){
			request.setAttribute("msg", "验证码输入错误！");
			//out.println("<script>alert('验证码错误！');self.location=document.referrer;</script>") ;
			return "admin/login";
		}
		List<Admin> admins = adminService.selectAll();
		for (Admin admin : admins) {
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
		return "admin/login";
	}

	
	protected void setSession(HttpServletRequest request, String key, String value, int timeNum) {
		HttpSession session = request.getSession();
		session.setAttribute(key, value);
		session.setMaxInactiveInterval(timeNum*60);
	}
	
	
}
