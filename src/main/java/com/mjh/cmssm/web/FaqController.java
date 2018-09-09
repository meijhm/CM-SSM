package com.mjh.cmssm.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/faq")
public class FaqController {
	@RequestMapping("/list")
	public String list() {
		
		return "app/faq.jsp";
	}
}
