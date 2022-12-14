package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.DepoOptionVO;
import com.fit_nance.project.model.DepositVO;
import com.fit_nance.project.model.InstallOptionVO;
import com.fit_nance.project.model.InstallVO;
import com.fit_nance.project.model.PensionVO;
import com.fit_nance.project.model.PsOptionVO;
import com.fit_nance.project.service.DepoOptionService;
import com.fit_nance.project.service.DepositService;
import com.fit_nance.project.service.InsOptionService;
import com.fit_nance.project.service.InstallmentService;
import com.fit_nance.project.service.ListLoanService;
import com.fit_nance.project.service.PensionService;
import com.fit_nance.project.service.ProductService;
import com.fit_nance.project.service.PsOptionService;

@Controller
public class SavingDBController {
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
	
	@Autowired
	ListLoanService creditloanlistService;
	
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

		ArrayList<PensionVO> psList = new ArrayList<PensionVO>();
		psList= psService.pension();
		for(int i = 0;i<psList.size();i++) {
			pService.insertPension(psList.get(i));
		}
		ArrayList<PsOptionVO> psOptionList = new ArrayList<PsOptionVO>();
		psOptionList = psoService.deposit();
		for(int i = 0;i<psOptionList.size();i++) {
			pService.insertPsOption(psOptionList.get(i));
		}
		
		//DB??? ????????? ???????????? ?????? ?????? ?????? ???????????? ?????????
		return "index";
		//return "product/productAllListView"; //???????????? ?????? ?????? (????????? ?????? ??? ?????????)
	}
}
