package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.PersonalLoanListVO;
import com.fit_nance.project.service.ListSavingService;

@Controller
public class ProductController {
	@Autowired
	ListSavingService listSavingService;
	
	// 상품 추천 프로세스
	@RequestMapping("/prd_recom")
	public String viewPrdRecom() {
		return "product/prd_recom_process";
	}
	
	// 상품 전체
	@RequestMapping("/prd_all")
	public String viewPrdAll(Model model) {
		ArrayList<InstallListVO> installList= listSavingService.selectInstallList();
		model.addAttribute("insList", installList);
		
		ArrayList<DepositListVO> dpList= listSavingService.selectDepositList();
		model.addAttribute("dpList", dpList);
		
//		ArrayList<PersonalLoanListVO> list_credit_loan = creditloanlistService.selectPersonalLoanList();
//		model.addAttribute("clList", list_credit_loan);
		
		return "product/prd_all";
	}
}
