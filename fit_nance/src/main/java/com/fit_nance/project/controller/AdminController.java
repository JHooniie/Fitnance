package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.MemberVO;
import com.fit_nance.project.model.NoticeVO;
import com.fit_nance.project.model.QNAVO;
import com.fit_nance.project.service.ManagementService;
import com.fit_nance.project.service.NoticeService;
import com.fit_nance.project.service.QNAService;

@Controller
public class AdminController {
	
	@Autowired
	NoticeService nService;
	
	@Autowired
	ManagementService mService;
	
	@Autowired
	QNAService qService;
	
	@RequestMapping("/adminLoginForm")
	public String viewLogin() {
		return "admin/login";
	}
	
	@RequestMapping("/admin/dashboard")
	public String viewDashboard(Model model) {
		ArrayList<NoticeVO> noticeList = nService.listAllNotice();
		model.addAttribute("noticeList", noticeList);
		
		ArrayList<MemberVO> memList = mService.listAllMember();
		model.addAttribute("memList", memList);
		
		return "admin/admin_dashboard";
	}
	
}
