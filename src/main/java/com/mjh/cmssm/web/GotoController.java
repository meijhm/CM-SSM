package com.mjh.cmssm.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GotoController {
	@RequestMapping("/login")
	public String adminLogin() {
		return "admin/login";
	}
	@RequestMapping("/admin")
	public String adminIndex() {
		return "admin/index";
	}
	@RequestMapping("/app")
	public String appIndex() {
		return "app/index";
	}
	@RequestMapping(value = {"/", "/applogin"})
	public String appLogin() {
		return "app/login";
	}
	@RequestMapping("/appreg")
	public String appReg() {
		return "app/register";
	}
}
