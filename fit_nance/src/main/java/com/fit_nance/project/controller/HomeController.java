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
	
	@RequestMapping("/deposit")
	public String deposit() {
		return "product2/deposit";
	}
	
	@RequestMapping("/intro")
	public String intro() {
		return "product2/intro";
	}
	@RequestMapping("/calculator_deposit")
	public String calculator_deposit() {
		return "product2/calculator_deposit";
	}
}
