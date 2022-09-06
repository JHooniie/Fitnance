package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fit_nance.project.model.FAQVO;
import com.fit_nance.project.model.NoticeVO;
import com.fit_nance.project.service.NoticeService;
import com.fit_nance.project.service.ProductService;

@Controller
public class CCController {
	
	@Autowired
	NoticeService nService;
	
	@Autowired
	ProductService pService;
	
	
	// 공지사항 전체 리스트 조회
	@RequestMapping("/notice")
	public String viewNotice(Model model) {
		ArrayList<NoticeVO> noticeList = nService.listAllNotice();
		model.addAttribute("noticeList", noticeList);
		
		return "cc/cc_notice";
	}
	
	@RequestMapping("/notice_detail/{noticeIndex}")
	public String viewNoticeDetail(@PathVariable int noticeIndex, Model model) {
		NoticeVO notice = nService.detailViewNotice(noticeIndex);
		model.addAttribute("notice", notice);
		
		return "cc/cc_notice_detail";
	}
	
	// 서비스 이용 문의 페이지 - 등록 / 목록 / 상세
	@RequestMapping("/inquire")
	public String viewInquire() {
		return "cc/cc_inquire";
	}
	
	// 서비스 이용 문의
	@RequestMapping("/cc_inquire")
	public String servicec_inquire(Model model) {
		return "cc/cc_inquire"; 
	}
	
	@RequestMapping("/faq")
	public String faq(Model model) {
		ArrayList<FAQVO> FAQList = pService.selectFAQ();
		model.addAttribute("FAQList", FAQList);
		return "product2/faq";
	}
	
	@RequestMapping("/faq_search")
	public String faq_search(@RequestParam(value="oldVal") String a,Model model) {
		ArrayList<FAQVO> FAQList = pService.selectFAQ_search(a);
		model.addAttribute("FAQList", FAQList);
		return "product2/faq_search";
	}
}
