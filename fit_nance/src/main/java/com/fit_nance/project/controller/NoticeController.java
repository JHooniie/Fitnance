package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.NoticeVO;
import com.fit_nance.project.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	NoticeService nService;
	
	// 공지사항 전체 리스트 조회
	@RequestMapping("/admin/notice")
	public String viewNotice(Model model) {
		ArrayList<NoticeVO> noticeList = nService.listAllNotice();
		model.addAttribute("noticeList", noticeList);
		
		return "admin/notice/admin_notice";
	}
	
	// 공지사항 등록 폼 열기
	@RequestMapping("/admin/notice_regist")
	public String viewNoticeForm() {
		return "admin/notice/admin_notice_form";
	}
	
	// 공지사항 등록
	@RequestMapping("/admin/insertNotice")
	public String insertNotice(NoticeVO notice) {
		nService.insertNotice(notice);
		
		// DB에 데이터 저장한 후 공지사항 목록 화면으로 포워딩
		return "redirect:/admin/notice";
//		return "redirect:./notice";
	}
}
