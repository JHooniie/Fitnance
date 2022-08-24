package com.fit_nance.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("/login")
	public String loginForm() {
		return "member/login";
	}
	
	@RequestMapping("/signup")
	public String signupForm() {
		return "member/signup";
	}
	
	@RequestMapping("/mypage")
	public String mypageForm() {
		return "member/myPage";
	}
	
	@RequestMapping("/update-auth")
	public String update_authForm() {
		return "member/update_mypage_auth";
	}
	
	@RequestMapping("/update-mypage")
	public String update_mypageForm() {
		return "member/update_mypage";
	}
	
	@RequestMapping("/update-password")
	public String update_passwordForm() {
		return "member/update_mypage_password";
	}
	
	
}
