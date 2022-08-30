package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.DepoOptionVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.DepositVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.PensionListVO;
import com.fit_nance.project.service.DepoOptionService;
import com.fit_nance.project.service.DepositService;
import com.fit_nance.project.service.InsOptionService;
import com.fit_nance.project.service.InstallmentService;
import com.fit_nance.project.service.PensionService;
import com.fit_nance.project.service.ProductService;
import com.fit_nance.project.service.PsOptionService;

@Controller
public class ProductController {
	@Autowired
	DepositService dService;
	 
	@Autowired
	DepoOptionService doService;
	
	@Autowired
	ProductService pService;
	
	@Autowired
	InstallmentService iService;
	
	@Autowired
	InsOptionService ioService;
	
	@Autowired
	PensionService psService;
	
	@Autowired
	PsOptionService psoService;
	
	@RequestMapping("/insertProduct")
	public String insertProduct() {
		/*ArrayList<DepositVO> depoList = new ArrayList<DepositVO>();
		depoList= dService.deposit();
		for(int i = 0;i<depoList.size();i++) {
			pService.insertDeposit(depoList.get(i));
		}*/
		/*ArrayList<DepoOptionVO> depoOptionList = new ArrayList<DepoOptionVO>();
		depoOptionList = doService.deposit();
		for(int i = 0;i<depoOptionList.size();i++) {
			pService.insertDepoOption(depoOptionList.get(i));
		}/*
		ArrayList<InstallVO> insList = new ArrayList<InstallVO>();
		insList= iService.install();
		for(int i = 0;i<insList.size();i++) {
			pService.insertInstall(insList.get(i));
		}
		ArrayList<InstallOptionVO> insOptionList = new ArrayList<InstallOptionVO>();
		insOptionList = ioService.install();
		for(int i = 0;i<insOptionList.size();i++) {
			pService.insertInsOption(insOptionList.get(i));
		}
		ArrayList<PensionVO> psList = new ArrayList<PensionVO>();
		psList= psService.pension();
		for(int i = 0;i<psList.size();i++) {
			pService.insertPension(psList.get(i));
		}
		ArrayList<PsOptionVO> psOptionList = new ArrayList<PsOptionVO>();
		psOptionList = psoService.deposit();
		for(int i = 0;i<psOptionList.size();i++) {
			pService.insertPsOption(psOptionList.get(i));
		}*/
		
		//DB에 데이터 저장한후 전체 상품 조회 화면으로 포워딩
		return "index";
		//return "product/productAllListView"; //뷰페이지 이름 반환 (데이터 없는 빈 페이지)
	}
	
	
	@RequestMapping("/saving")
	public String saving(Model model) {
		ArrayList<InstallListVO> installList= pService.selectInstall();
		model.addAttribute("insList", installList);
		
		//DB에 데이터 저장한후 전체 상품 조회 화면으로 포워딩
		return "product2/saving";
		//return "product/productAllListView"; //뷰페이지 이름 반환 (데이터 없는 빈 페이지)
	}
	
	@RequestMapping("/deposit")
	public String deposit(Model model) {
		ArrayList<DepositListVO> dpList= pService.selectDeposit();
		model.addAttribute("dpList", dpList);
		
		return "product2/deposit";
	}
	
	
	@RequestMapping("/pension")
	public String pension(Model model) {
		ArrayList<PensionListVO> psList= pService.selectPension();
		model.addAttribute("psList", psList);
		
		return "product2/pension";
	}
	
	
	// 상품 추천 프로세스
	@RequestMapping("/prd_recom")
	public String viewPrdRecom() {
		return "product/prd_recom_process";
	}
	
	// 상품 추천 프로세스
	@RequestMapping("/prd_all")
	public String viewPrdAll() {
		return "product/prd_all";
	}
}
