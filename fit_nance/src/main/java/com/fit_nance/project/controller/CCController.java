package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.model.FAQVO;
import com.fit_nance.project.model.NoticeVO;
import com.fit_nance.project.model.QNAVO;
import com.fit_nance.project.service.NoticeService;
import com.fit_nance.project.service.ProductService;
import com.fit_nance.project.service.QNAService;

@Controller
public class CCController {
	
	@Autowired
	NoticeService nService;
	
	@Autowired
	ProductService pService;
	
	@Autowired
	QNAService qService;
	
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
	
	// 서비스 이용 문의
	@RequestMapping("/cc_inquire")
	public String service_inquire(Authentication auth, Model model) {
		PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
		
		String memId = princ.getUsername();
		//ArrayList<QNAVO> qnaList = qService.listMemQNA(memId);
		
		model.addAttribute("memId", memId);
		//model.addAttribute("qnaList", qnaList);
		return "cc/inquire"; 
	}

	@ResponseBody
	@RequestMapping("/inquire_register")
	public String inquire_register(Authentication auth
									,@RequestParam(value="type") String type
									,@RequestParam(value="title") String title
									,@RequestParam(value="content") String content) {
		String result = "fail";
		PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
		
		String memId = princ.getUsername();
		
		qService.insertQNA(title, content, memId);
		
		return result;
	}
	@RequestMapping("/inquire_list")
	public String inquire_list(Authentication auth, Model model) {
		PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
		
		String memId = princ.getUsername();
		ArrayList<QNAVO> qnaList = qService.listMemQNA(memId);
		
		model.addAttribute("memId", memId);
		model.addAttribute("qnaList", qnaList);
		return "cc/inquire_list"; 
	}
	@RequestMapping("/inquire_detail/{qIndex}")
	public String inquire_detail(@PathVariable int qIndex, Authentication auth, Model model) {
		PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
		
		String memId = princ.getUsername();
		System.out.println("인덱스 : "+qIndex);
		//ArrayList<QNAVO> qnaQ = qService.questionMemQNA(qIndex);
		QNAVO qnaQ = qService.questionMemQNA(qIndex);
		//ArrayList<QNAVO> qnaA = qService.answerMemQNA(memId, qIndex);
		QNAVO qnaA = qService.answerMemQNA(memId, qIndex);
		model.addAttribute("qnaQ", qnaQ);
		model.addAttribute("qnaA", qnaA);
		
		return "cc/inquire_detail";
	}
	@RequestMapping("/insert_inquire")
	public String insert_inquire() {
		String result = "fail";
		return result;
	}
	
	@RequestMapping("/faq")
	public String faq(Model model) {
		ArrayList<FAQVO> FAQList = pService.selectFAQ();
		model.addAttribute("FAQList", FAQList);
		return "cc/faq";
	}
	
	@RequestMapping("/faq_search")
	public String faq_search(@RequestParam(value="oldVal") String a,Model model) {
		ArrayList<FAQVO> FAQList = pService.selectFAQ_search(a);
		model.addAttribute("FAQList", FAQList);
		return "cc/faq_search";
	}
}
