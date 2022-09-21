package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.PersonalLoanListVO;
import com.fit_nance.project.model.PopularListVO;
import com.fit_nance.project.model.PopularVO;
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
		
		ArrayList<PopularVO> pp =listSavingService.selectPopular();
		
		ArrayList<PopularListVO> pList = new ArrayList<PopularListVO>();
		int a;
		int b=0,count=0;
		
		while(count<4) {
			a = pp.get(b).getKind();
			if(a==1) {
				int c= pp.get(b).getoIndex();
				InstallListVO ins = listSavingService.selectInstallDetail(c);
				PopularListVO vo = new PopularListVO();
				vo.setFin_co_no(ins.getFin_co_no());
				vo.setFin_prdt_nm(ins.getFin_prdt_nm());
				vo.setIntr_rate2(ins.getIntr_rate2());
				vo.setKor_co_nm(ins.getKor_co_nm());
				pList.add(vo);
				count++;
			}
			else if(a==2) {
				int c= pp.get(b).getoIndex();
				DepositListVO dp = listSavingService.selectDepositDetail(c);
				PopularListVO vo = new PopularListVO();
				vo.setFin_co_no(dp.getFin_co_no());
				vo.setFin_prdt_nm(dp.getFin_prdt_nm());
				vo.setIntr_rate2(dp.getIntr_rate2());
				vo.setKor_co_nm(dp.getKor_co_nm());
				pList.add(vo);
				count++;
			}
			b++;
		}
		model.addAttribute("pList", pList);
		
		return "product/prd_all";
	}
}
