package com.fit_nance.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.ILoanListDAO;
import com.fit_nance.project.model.CharterLoanListVO;
import com.fit_nance.project.model.HomeLoanFilterVO;
import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.model.PersonalLoanListVO;

@Service
public class LoanListService implements ILoanListService{

	@Autowired
	@Qualifier("ILoanListDAO")
	ILoanListDAO dao;
	
	@Override
	public ArrayList<HomeLoanListVO> selectHomeLoanList() {
		return dao.selectHomeLoanList();
	}

	@Override
	public HomeLoanListVO selectHomeLoanDetail(String fin_prdt_cd) {
		return dao.selectHomeLoanDetail(fin_prdt_cd);
	}

//	@Override
//	public HomeLoanFilterVO selectHomeLoanFilter(HashMap<String, Object> map) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
	@Override
	public ArrayList<CharterLoanListVO> selectCharterLoanList() {
		return dao.selectCharterLoanList();
	}

	@Override
	public ArrayList<PersonalLoanListVO> selectPersonalLoanList() {
		return dao.selectPersonalLoanList();
	}


}
