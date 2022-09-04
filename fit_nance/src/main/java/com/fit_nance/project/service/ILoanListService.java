package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.CharterLoanFilterVO;
import com.fit_nance.project.model.CharterLoanListVO;
import com.fit_nance.project.model.HomeLoanFilterVO;
import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.model.PersonalLoanFilterVO;
import com.fit_nance.project.model.PersonalLoanListVO;

public interface ILoanListService { 
	// 주택담보 mortgage_loan
	public ArrayList<HomeLoanListVO> selectHomeLoanList();
	public HomeLoanListVO selectHomeLoanDetail(String fin_prdt_cd);
	
	public ArrayList<HomeLoanFilterVO> selectHomeLoanFilter(HomeLoanFilterVO vo);
	
	
	// 전세자금 house_loan
	public ArrayList<CharterLoanListVO> selectCharterLoanList();
	public CharterLoanListVO selectCharterLoanDetail(String fin_prdt_cd);
	public ArrayList<CharterLoanFilterVO> selectCharterLoanFilter(CharterLoanFilterVO vo);
	
	
	// 개인신용
	public ArrayList<PersonalLoanListVO> selectPersonalLoanList();
	public PersonalLoanListVO selectPersonalLoanDetail(String fin_prdt_cd);
	public ArrayList<PersonalLoanFilterVO> selectPersonalLoanFilter(PersonalLoanFilterVO vo);
	
}
