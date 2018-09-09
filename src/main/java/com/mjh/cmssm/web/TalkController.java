package com.mjh.cmssm.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/talk")
public class TalkController {
	@RequestMapping("/index")
	public String toTalk() {
		return "app/talk";
	}
	@RequestMapping("/welcome")
	public String toWelcome() {
		return "app/welcometalk";
	}
	@RequestMapping("/tosend")
	public String toSend() {
		return "app/tosend";
	}
	@RequestMapping("/torepair")
	public String toRepair() {
		return "app/torepair";
	}
	@RequestMapping("/toadmin")
	public String toAdmin() {
		return "app/toadmin";
	}
}
