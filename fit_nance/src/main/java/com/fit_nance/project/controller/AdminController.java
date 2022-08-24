package com.fit_nance.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin")
	public String viewLogin() {
		return "admin/login";
	}
	
	@RequestMapping("/admin/notice")
	public String viewNotice() {
		return "admin/notice/admin_notice";
	}
	
	@RequestMapping("/admin/notice_regist")
	public String viewNoticeForm() {
		return "admin/notice/admin_notice_form";
	}
}
