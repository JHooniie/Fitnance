package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@RequestMapping("/list_mortgage_loan")
	public String list_mortgage_loan(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
		model.addAttribute("list_home_loan", list_home_loan);
		return "product/list_mortgage_loan"; 
	}
	
	@RequestMapping("/detail_mortgage_loan")
	public String detail_mortgage(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/detail_mortgage_loan"; 
	}
	
	@RequestMapping("/list_house_loan")
	public String list_house_loan(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/list_house_loan"; 
	}
	
	@RequestMapping("/list_credit_loan")
	public String list_credit_loan(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/list_credit_loan"; 
	}
	
	@RequestMapping("/calc_rpayment")
	public String calc_rpayment(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "calculator/calc_rpayment"; 
	}
	
	@RequestMapping("/servicec_inquire")
	public String servicec_inquire(Model model) {
//		ArrayList<HomeLoanListVO> list_home_loan = new ArrayList<HomeLoanListVO>();
//		ArrayList<HomeLoanListVO> list_home_loan = homeloanlistService.selectHomeLoanList();
//		model.addAttribute("list_home_loan", list_home_loan);
		return "product/servicec_inquire"; 
	}
	
	@RequestMapping("/deposit")
	public String deposit() {
		return "product2/deposit";
	}
	
	/*@RequestMapping("/saving")
	public String saving() {
		return "product2/saving";
	}*/
	
	@RequestMapping("/pension")
	public String pension() {
		return "product2/pension";
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
}
