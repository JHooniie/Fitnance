package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fit_nance.project.model.FAQVO;
import com.fit_nance.project.service.FAQService;

@Controller
public class FAQController {
	
	@Autowired
	FAQService fService;
	
	// faq 전체 리스트 조회
	@RequestMapping("/admin/faq")
	public String viewFAQ(Model model) {
		ArrayList<FAQVO> faqList = fService.listAllFAQ();
		model.addAttribute("FAQList", faqList);
		
		return "admin/faq/admin_faq";
	}
	
	// faq 등록 폼 열기
	@RequestMapping("/admin/registFAQ")
	public String viewFAQForm() {
		return "admin/faq/admin_faq_form";
	}
	
	// faq 등록
	@RequestMapping("/admin/insertFAQ")
	public String insertFAQ(FAQVO faq) {
		fService.insertFAQ(faq);
		
		// DB에 데이터 저장한 후 공지사항 목록 화면으로 포워딩
		return "redirect:/admin/faq";
//		return "redirect:./notice";
	}
	
	// faq 수정 폼 열기 요청 처리
	@RequestMapping("/admin/updateFAQ/{faqIndex}")
	public String updateFAQForm(@PathVariable int faqIndex, Model model) {
		// 수정할 상품 번호 받아서, detailViewNotice() 메소드 호출하면서 전달하고
		// 해당 상품 정보 1개 받아서 모델 설정
		FAQVO faq = fService.detailViewFAQ(faqIndex);
		model.addAttribute("FAQ", faq);
		
		return "admin/faq/admin_faq_update_form";
	}
	
	// faq 수정
	@RequestMapping("/admin/updateFAQ")
	public String updateFAQ(FAQVO faq) {
		fService.updateFAQ(faq);
		
		// DB에 데이터 저장한 후 공지사항 목록 화면으로 포워딩
		return "redirect:./faq";
	}
	
	// faq 삭제
	@ResponseBody
	@RequestMapping("/admin/deleteFAQ")
	public int deleteFAQ(@RequestParam("checkArr[]") ArrayList<Integer> chkArr) {
		int result = 0;
		
		if(chkArr != null) {
			for(int faqIndex : chkArr) {
				fService.deleteFAQ(faqIndex);
			}
			result = 1;
		}
		
		return result;
	}
	
	// faq 상세 보기
	@RequestMapping("/admin/FAQDetailView/{faqIndex}")
	public String detailViewFAQ(@PathVariable int faqIndex, Model model) {
		FAQVO faq = fService.detailViewFAQ(faqIndex);
		model.addAttribute("FAQ", faq);
		
		return "admin/faq/admin_faq_detail";
	}

}
