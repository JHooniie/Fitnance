package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.DepoOptionVO;
import com.fit_nance.project.model.DepositVO;
import com.fit_nance.project.model.InstallOptionVO;
import com.fit_nance.project.model.InstallVO;
import com.fit_nance.project.service.DepoOptionService;
import com.fit_nance.project.service.DepositService;
import com.fit_nance.project.service.InsOptionService;
import com.fit_nance.project.service.InstallmentService;
import com.fit_nance.project.service.ProductService;

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
	
	@RequestMapping("/insertProduct")
	public String insertProduct() {
		ArrayList<DepositVO> depoList = new ArrayList<DepositVO>();
		depoList= dService.deposit();
		for(int i = 0;i<depoList.size();i++) {
			pService.insertDeposit(depoList.get(i));
		}
		ArrayList<DepoOptionVO> depoOptionList = new ArrayList<DepoOptionVO>();
		depoOptionList = doService.deposit();
		for(int i = 0;i<depoOptionList.size();i++) {
			pService.insertDepoOption(depoOptionList.get(i));
		}
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
		
		//DB에 데이터 저장한후 전체 상품 조회 화면으로 포워딩
		return "index";
		//return "product/productAllListView"; //뷰페이지 이름 반환 (데이터 없는 빈 페이지)
	}
}
