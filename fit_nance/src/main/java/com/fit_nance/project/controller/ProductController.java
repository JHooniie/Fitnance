package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.model.APIKey;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.PersonalLoanListVO;
import com.fit_nance.project.service.AitemsService;
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
	public String viewPrdRecomResult(Model model, Authentication auth) throws Exception {
		
		ArrayList<InstallListVO> installList= listSavingService.selectInstallList();
		model.addAttribute("insList", installList);
		
		//Deposit 개인화 추천 리스트
		if(auth != null) {
			PrincipalDetails princ = (PrincipalDetails) auth.getPrincipal();
			String memId = princ.getUsername();
			
			APIKey key = new APIKey();
			String serviceId = key.getAitemsId();
			String type = "personalRecommend";
			
			DepositListVO dpvo = new DepositListVO();
			// 추천 상품 인덱스 리스트 호출
			ArrayList<Integer> prIndex = AitemsService.aitemsService(serviceId, type, memId);// 결과 리스트
			ArrayList<DepositListVO> dpRecList = new ArrayList<DepositListVO>();
			
			for(int i=0; i<prIndex.size(); i++) {// 추천 상품 db 가져오기
				dpvo = listSavingService.recommendDepositList(prIndex.get(i));
				dpRecList.add(dpvo);
			}
			model.addAttribute("dpRecList", dpRecList);
			
		}
				
		return "product/prd_recom_result";
	}
	
	// 상품 전체
	@RequestMapping("/prd_all")
	public String viewPrdAll(Model model, Authentication auth) throws Exception{
		
		//Deposit 개인화 추천 리스트
		if(auth != null) {
			PrincipalDetails princ = (PrincipalDetails) auth.getPrincipal();
			String memId = princ.getUsername();
			
			APIKey key = new APIKey();
			String serviceId = key.getAitemsId();
			String type = "personalRecommend";
			
			DepositListVO dpvo = new DepositListVO();
			// 추천 상품 인덱스 리스트 호출
			ArrayList<Integer> prIndex = AitemsService.aitemsService(serviceId, type, memId);// 결과 리스트
			ArrayList<DepositListVO> dpRecList = new ArrayList<DepositListVO>();
			
			for(int i=0; i<prIndex.size(); i++) {// 추천 상품 db 가져오기
				dpvo = listSavingService.recommendDepositList(prIndex.get(i));
				dpRecList.add(dpvo);
			}
			model.addAttribute("dpRecList", dpRecList);
			
		}
		
		ArrayList<InstallListVO> installList= listSavingService.selectInstallList();
		model.addAttribute("insList", installList);
		
		ArrayList<DepositListVO> dpList= listSavingService.selectDepositList();
		model.addAttribute("dpList", dpList);
		
		ArrayList<PersonalLoanListVO> clList = listLoanService.selectPersonalLoanList();
		model.addAttribute("clList", clList);
		
		return "product/prd_all";
	}
}
