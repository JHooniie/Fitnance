package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.service.HomeLoanListService;

@Controller
public class HomeController {

	@Autowired
	HomeLoanListService homeloanlistService;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	// 주택담보 대출
	@RequestMapping("/list_mortgage_loan")
	public String list_mortgage_loan(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
		ArrayList<String> loan_join_way = new ArrayList<String>();
		
		for(int i=0; i<list_home_loan.size(); i++) {
			HomeLoanListVO vo = list_home_loan.get(i);
			String str = vo.getJoin_way();
			String[] joinway = str.split(",");
			for(String temp : joinway) {
				loan_join_way.add(i, temp);
				System.out.print(temp);
			}
			System.out.println();
		}
		
		model.addAttribute("list_home_loan", list_home_loan);
		model.addAttribute("loan_join_way", loan_join_way);
		return "product/list_mortgage_loan"; 
	}
//	
//	@ResponseBody
//	@RequestMapping(value="/view_prdt_detail", method=RequestMethod.POST)
//	public String view_prdt_cd(String input_prdt_cd
////							, HttpServletRequest request
////							, HomeLoanListVO vo
//											) {
//		
////		homeloanlistService.
//			System.out.println("ajax 요청 전달 완료2 prdt_cd : "+input_prdt_cd);
//			return "success";
//		
//		
//	}
	
	@RequestMapping("/view_prdt_detail")
	public String view_prdt_cd(@RequestParam("input_prdt_cd") String fin_prdt_cd, Model model) {
		System.out.println(fin_prdt_cd);
		HomeLoanListVO prdt = homeloanlistService.selectHomeLoanDetail(fin_prdt_cd);
		
		model.addAttribute("prdt",prdt);
		return "product/detail_mortgage_loan";
	}
	
	@RequestMapping("/detail_mortgage_loan")
	public String detail_mortgage(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/detail_mortgage_loan"; 
	}
	
	//전세자금 대출
	@RequestMapping("/list_house_loan")
	public String list_house_loan(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/list_house_loan"; 
	}
	
	// 개인신용 대출
	@RequestMapping("/list_credit_loan")
	public String list_credit_loan(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/list_credit_loan"; 
	}
	
	// 대출이자 계산기
	@RequestMapping("/calc_rpayment")
	public String calc_rpayment(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "calculator/calc_rpayment"; 
	}
	
	// 서비스 이용 문의
	@RequestMapping("/cc_inquire")
	public String servicec_inquire(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "cc/cc_inquire"; 
	}
	
	
	@RequestMapping("/faq")
	public String faq() {
		return "product2/faq";
	}
	
	@RequestMapping("/deposit_detail")
	public String deposit_detail() {
		return "product2/deposit_detail";
	}
	@RequestMapping("/saving_detail")
	public String saving_detail() {
		return "product2/saving_detail";
	}
	@RequestMapping("/pension_detail")
	public String pension_detail() {
		return "product2/pension_detail";
	}
	
	@RequestMapping("/intro")
	public String intro() {
		return "product2/intro";
	}
	@RequestMapping("/calculator_deposit")
	public String calculator_deposit() {
		return "product2/calculator_deposit";
	}
	
	@RequestMapping("/calculator_lump")
	public String calculator_lump() {
		return "product2/calculator_lump";
	}
	
	@RequestMapping("/deposit_compare")
	public String deposit_compare() {
		return "product2/deposit_compare";
	}
	
	@RequestMapping("/saving_compare")
	public String saving_compare() {
		return "product2/saving_compare";
	}
	
	@RequestMapping("/pension_compare")
	public String pension_compare() {
		return "product2/pension_compare";
	}
	
	// 대출상품 비교
	@RequestMapping("/compare_loan")
	public String compare_loan() {
		return "product/compare_loan";
	}
}
