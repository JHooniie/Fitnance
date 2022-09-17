package com.fit_nance.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.ILoanDAO;
import com.fit_nance.project.model.CharterLoanBaseVO;
import com.fit_nance.project.model.CharterLoanOptVO;
import com.fit_nance.project.model.FavoriteVO;
import com.fit_nance.project.model.HomeLoanBaseVO;
import com.fit_nance.project.model.HomeLoanOptVO;
import com.fit_nance.project.model.PersonalLoanBaseVO;
import com.fit_nance.project.model.PersonalLoanOptVO;

@Service
public class LoanService implements ILoanService {
	@Autowired
	@Qualifier("ILoanDAO")
	ILoanDAO dao;
	
	// CharterLoan
	@Override
	public void insertCharterLoanBaseList(CharterLoanBaseVO vo) {
		dao.insertCharterLoanBaseList(vo);
	}

	@Override
	public void insertCharterLoanOptList(CharterLoanOptVO vo) {
		dao.insertCharterLoanOptList(vo);
	}

	// HomeLoan
	@Override
	public void insertHomeLoanBaseList(HomeLoanBaseVO vo) {
		dao.insertHomeLoanBaseList(vo);
	}

	@Override
	public void insertHomeLoanOptList(HomeLoanOptVO vo) {
		dao.insertHomeLoanOptList(vo);
	}
	
	// PersonalLoan
	@Override
	public void insertPersonalLoanBaseList(PersonalLoanBaseVO vo) {
		dao.insertPersonalLoanBaseList(vo);
	}

	@Override
	public void insertPersonalLoanOptList(PersonalLoanOptVO vo) {
		dao.insertPersonalLoanOptList(vo);
	}
}
