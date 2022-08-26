package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.NoticeVO;
import com.fit_nance.project.service.NoticeService;

@Controller
public class AdminController {
	
	@Autowired
	NoticeService nService;
	
	@RequestMapping("/admin")
	public String viewLogin() {
		return "admin/login";
	}
	
	@RequestMapping("/admin/dashboard")
	public String viewDashboard(Model model) {
		ArrayList<NoticeVO> noticeList = nService.listAllNotice();
		model.addAttribute("noticeList", noticeList);
		
		return "admin/admin_dashboard";
	}
	
}
