package com.fit_nance.project.dao;

import java.util.ArrayList;

import com.fit_nance.project.model.CharterLoanListVO;
import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.model.PersonalLoanListVO;

public interface ILoanListDAO {
	// 주택담보
	public ArrayList<HomeLoanListVO> selectHomeLoanList();
	public HomeLoanListVO selectHomeLoanDetail(String fin_prdt_cd);
	
	//public ArrayList<ArrayList<String>> selectHomeLoanFilter(ArrayList<ArrayList<String>> temp);
	
	
	// 전세자금
	public ArrayList<CharterLoanListVO> selectCharterLoanList();
	
	// 개인신용
	public ArrayList<PersonalLoanListVO> selectPersonalLoanList();
}
