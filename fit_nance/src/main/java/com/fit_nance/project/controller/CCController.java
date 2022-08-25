package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.NoticeVO;
import com.fit_nance.project.service.NoticeService;

@Controller
public class CCController {
	
	@Autowired
	NoticeService nService;
	
	@RequestMapping("/notice")
	public String viewNotice(Model model) {
		ArrayList<NoticeVO> noticeList = nService.listAllNotice();
		model.addAttribute("noticeList", noticeList);
		
		return "cc/cc_notice";
	}
	
	@RequestMapping("/notice_detail")
	public String viewNoticeDetail() {
		return "cc/cc_notice_detail";
	}
}
