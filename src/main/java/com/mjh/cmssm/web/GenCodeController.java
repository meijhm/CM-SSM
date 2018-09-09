package com.mjh.cmssm.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.dsna.util.images.ValidateCode;

@Controller
public class GenCodeController {

	@RequestMapping("/image")
	public void genImgCode(HttpServletRequest request, HttpServletResponse response) {
		response.setHeader("param", "no-cache");
		response.setHeader("cache-control", "no-cache");
		response.setIntHeader("expires", 0);
		
		ValidateCode vc = new ValidateCode(110, 25, 4, 9);
		request.getSession().setAttribute("sCode", vc.getCode());
		System.out.println("fdd"+vc.getCode());
		try {
			vc.write(response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
