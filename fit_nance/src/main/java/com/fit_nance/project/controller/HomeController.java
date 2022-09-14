package com.fit_nance.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController { 
	
	// 메인페이지
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	// 회사소개
	@RequestMapping("/intro")
	public String intro() {
		return "intro";
	}
	
	
}
