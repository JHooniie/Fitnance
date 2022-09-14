package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.PersonalLoanListVO;
import com.fit_nance.project.service.ListLoanService;
import com.fit_nance.project.service.ListSavingService;

@Controller
public class ProductController {
	@Autowired
	ListSavingService listSavingService;
	
	@Autowired
	ListLoanService listLoanService;
	
	// 상품 추천 프로세스
	@RequestMapping("/prd_recom")
	public String viewPrdRecom() {
		return "product/prd_recom_process";
	}
	
	// 상품 추천 프로세스
	@RequestMapping("/prd_recom_result")
	public String viewPrdRecomResult() {
		return "product/prd_recom_result";
	}
	
	// 상품 전체
	@RequestMapping("/prd_all")
	public String viewPrdAll(Model model) {
		ArrayList<InstallListVO> installList= listSavingService.selectInstallList();
		model.addAttribute("insList", installList);
		
		ArrayList<DepositListVO> dpList= listSavingService.selectDepositList();
		model.addAttribute("dpList", dpList);
		
		ArrayList<PersonalLoanListVO> clList = listLoanService.selectPersonalLoanList();
		model.addAttribute("clList", clList);
		
		return "product/prd_all";
	}
}
