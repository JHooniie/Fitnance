package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fit_nance.project.model.CharterLoanFilterVO;
import com.fit_nance.project.model.CharterLoanListVO;
import com.fit_nance.project.model.DepositFilterVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.FAQVO;
import com.fit_nance.project.model.HomeLoanFilterVO;
import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.model.PensionFilterVO;
import com.fit_nance.project.model.PensionListVO;
import com.fit_nance.project.model.PersonalLoanFilterVO;
import com.fit_nance.project.model.PersonalLoanListVO;
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
	
	
	//전세자금 대출
	@RequestMapping("/list_house_loan")
	public String list_house_loan(Model model) {
		ArrayList<CharterLoanListVO> list_house_loan = loanlistService.selectCharterLoanList();
		
		
		model.addAttribute("list_house_loan", list_house_loan);
		return "product/list_house_loan"; 
	}
	
	@RequestMapping("/filter_house_loan")
	public String filter_house_loan(Model model
										, @RequestParam(value="arr_join_way") ArrayList<String> arr_join_way
										, @RequestParam(value="arr_rpay_type") ArrayList<String> arr_rpay_type
										, @RequestParam(value="arr_lend_type") ArrayList<String> arr_lend_type
										) {
		
		CharterLoanFilterVO vo = new CharterLoanFilterVO();
		
		ArrayList<String> list_join_way = new ArrayList<String>();
		ArrayList<String> list_rpay_type = new ArrayList<String>();
		ArrayList<String> list_lend_type = new ArrayList<String>();
		
		for(int i=1; i<arr_join_way.size(); i++) {
			list_join_way.add(arr_join_way.get(i));
		}
		
		if(list_join_way != null)
			vo.setList_join_way(list_join_way);
		
		for(int i=1; i<arr_rpay_type.size(); i++) {
			list_rpay_type.add(arr_rpay_type.get(i));
		}

		if(list_rpay_type != null)
			vo.setList_rpay_type(list_rpay_type);
		
		for(int i=1; i<arr_lend_type.size(); i++) {
			list_lend_type.add(arr_lend_type.get(i));
		}

		if(list_lend_type != null)
			vo.setList_lend_type(list_lend_type);
		
		vo.setList_join_way(list_join_way);
		vo.setList_rpay_type(list_rpay_type);
		vo.setList_lend_type(list_lend_type);
		
		ArrayList<CharterLoanFilterVO> list_house_loan= loanlistService.selectCharterLoanFilter(vo);
		
		model.addAttribute("list_house_loan", list_house_loan);
		return "product/result_house_loan";

	}
	
	@RequestMapping("/view_house_detail")
	public String view_house_detail(@RequestParam("input_prdt_cd") String fin_prdt_cd, Model model) {
		System.out.println(fin_prdt_cd);
		CharterLoanListVO prdt = loanlistService.selectCharterLoanDetail(fin_prdt_cd);
		
		model.addAttribute("prdt",prdt);
		return "product/detail_house_loan";
	}
	
	// 개인신용 대출
	@RequestMapping("/list_credit_loan")
	public String list_credit_loan(Model model) {
		ArrayList<PersonalLoanListVO> list_credit_loan = loanlistService.selectPersonalLoanList();
		model.addAttribute("list_credit_loan", list_credit_loan);
		return "product/list_credit_loan"; 
	}
	
	@RequestMapping("/filter_credit_loan")
	public String filter_credit_loan(Model model
										, @RequestParam(value="arr_join_way") ArrayList<String> arr_join_way
										, @RequestParam(value="arr_crdt_prdt_type") ArrayList<String> arr_crdt_prdt_type
										) {
		
		PersonalLoanFilterVO vo = new PersonalLoanFilterVO();
		
		ArrayList<String> list_join_way = new ArrayList<String>();
		ArrayList<String> list_crdt_prdt_type = new ArrayList<String>();
		
		for(int i=1; i<arr_join_way.size(); i++) {
			list_join_way.add(arr_join_way.get(i));
		}
		
		if(list_join_way != null)
			vo.setList_join_way(list_join_way);
		
		for(int i=1; i<list_crdt_prdt_type.size(); i++) {
			list_crdt_prdt_type.add(list_crdt_prdt_type.get(i));
		}

		if(list_crdt_prdt_type != null)
			vo.setList_crdt_prdt_type(list_crdt_prdt_type);
		
		vo.setList_join_way(list_join_way);
		vo.setList_crdt_prdt_type(list_crdt_prdt_type);
		
		ArrayList<PersonalLoanFilterVO> list_credit_loan= loanlistService.selectPersonalLoanFilter(vo);
		
		model.addAttribute("list_credit_loan", list_credit_loan);
		return "product/result_credit_loan";

	}
	
	@RequestMapping("/view_credit_detail")
	public String view_credit_detail(@RequestParam("input_prdt_cd") String fin_prdt_cd, Model model) {
		System.out.println(fin_prdt_cd);
		PersonalLoanListVO prdt = loanlistService.selectPersonalLoanDetail(fin_prdt_cd);
		
		model.addAttribute("prdt",prdt);
		return "product/detail_credit_loan";
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
