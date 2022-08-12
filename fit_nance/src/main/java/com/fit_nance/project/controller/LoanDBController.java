package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.model.CharterLoanBaseVO;
import com.fit_nance.project.model.CharterLoanOptVO;
import com.fit_nance.project.model.HomeLoanBaseVO;
import com.fit_nance.project.model.HomeLoanOptVO;
import com.fit_nance.project.model.PersonalLoanBaseVO;
import com.fit_nance.project.model.PersonalLoanOptVO;
import com.fit_nance.project.service.CharterLoanBaseService;
import com.fit_nance.project.service.CharterLoanOptService;
import com.fit_nance.project.service.HomeLoanBaseService;
import com.fit_nance.project.service.HomeLoanOptService;
import com.fit_nance.project.service.LoanService;
import com.fit_nance.project.service.PersonalLoanBaseService;
import com.fit_nance.project.service.PersonalLoanOptService;

@Controller
public class LoanDBController {
	@Autowired
	HomeLoanBaseService homeloanbaseService;
	@Autowired
	HomeLoanOptService homeloanoptService;
	@Autowired
	CharterLoanBaseService charterloanbaseService;
	@Autowired
	CharterLoanOptService charterloanoptService;
	@Autowired
	PersonalLoanBaseService personalloanbaseService;
	@Autowired
	PersonalLoanOptService personalloanoptService;
	@Autowired
	LoanService loanService;
	
	@RequestMapping("/insertCharterLoanBaseList")
	public String insertCharterLoanBaseList() throws Exception{
		ArrayList<CharterLoanBaseVO> base = new ArrayList<CharterLoanBaseVO>();
		
		base = charterloanbaseService.charterloanBase();
		
		for(int i=0; i<base.size(); i++) {
			loanService.insertCharterLoanBaseList(base.get(i));
		}
		
		return "index";
	}
	
	@RequestMapping("/insertCharterLoanOptList")
	public String insertCharterLoanOptList() throws Exception{
		ArrayList<CharterLoanOptVO> option = new ArrayList<CharterLoanOptVO>();
		
		option = charterloanoptService.charterloanOpt();
		
		for(int i=0; i<option.size(); i++) {
			loanService.insertCharterLoanOptList(option.get(i));
		}
		
		return "index";
	}
	
	@RequestMapping("/insertHomeLoanBaseList")
	public String insertHomeLoanBaseList() throws Exception{
		ArrayList<HomeLoanBaseVO> base = new ArrayList<HomeLoanBaseVO>();
		
		base = homeloanbaseService.homeloanBase();
		
		for(int i=0; i<base.size(); i++) {
			loanService.insertHomeLoanBaseList(base.get(i));
		}
		
		return "index";
	}
	
	@RequestMapping("/insertHomeLoanOptList")
	public String insertHomeLoanOptList() throws Exception{
		ArrayList<HomeLoanOptVO> option = new ArrayList<HomeLoanOptVO>();
		
		option = homeloanoptService.homeloanOpt();
		
		for(int i=0; i<option.size(); i++) {
			loanService.insertHomeLoanOptList(option.get(i));
		}
		
		return "index";
	}
	
	@RequestMapping("/insertPersonalLoanBaseList")
	public String insertPersonalLoanBaseList() throws Exception{
		ArrayList<PersonalLoanBaseVO> base = new ArrayList<PersonalLoanBaseVO>();
		
		base = personalloanbaseService.personalloanBase();
		
		for(int i=0; i<base.size(); i++) {
			loanService.insertPersonalLoanBaseList(base.get(i));
		}
		
		return "index";
	}
	
	@RequestMapping("/insertPersonalLoanOptList")
	public String insertPersonalLoanOptList() throws Exception{
		ArrayList<PersonalLoanOptVO> option = new ArrayList<PersonalLoanOptVO>();
		
		option = personalloanoptService.personalloanOpt();
		
		for(int i=0; i<option.size(); i++) {
			loanService.insertPersonalLoanOptList(option.get(i));
		}
		
		return "index";
	}
}
