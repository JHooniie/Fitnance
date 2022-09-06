package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fit_nance.project.model.FAQVO;
import com.fit_nance.project.service.ListLoanService;
import com.fit_nance.project.service.ProductService;

@Controller
public class HomeController { 
	@Autowired
	ProductService pService;

	@Autowired
	ListLoanService loanlistService;
	
	// 메인페이지
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	// 회사소개
	@RequestMapping("/intro")
	public String intro() {
		return "product2/intro";
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
	
	@RequestMapping("/calculator_deposit")
	public String calculator_deposit() {
		return "product2/calculator_deposit";
	}
	
	@RequestMapping("/calculator_lump")
	public String calculator_lump() {
		return "product2/calculator_lump";
	}
	
	
}
