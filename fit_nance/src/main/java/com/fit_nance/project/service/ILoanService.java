package com.fit_nance.project.service;

import com.fit_nance.project.model.CharterLoanBaseVO;
import com.fit_nance.project.model.CharterLoanOptVO;
import com.fit_nance.project.model.HomeLoanBaseVO;
import com.fit_nance.project.model.HomeLoanOptVO;
import com.fit_nance.project.model.PersonalLoanBaseVO;
import com.fit_nance.project.model.PersonalLoanOptVO;

public interface ILoanService {

	// CharterLoan
	void insertCharterLoanBaseList(CharterLoanBaseVO vo);
	void insertCharterLoanOptList(CharterLoanOptVO vo);
	
	// HomeLoan
	void insertHomeLoanBaseList(HomeLoanBaseVO vo);
	void insertHomeLoanOptList(HomeLoanOptVO vo);
	
	// PersonalLoan
	void insertPersonalLoanBaseList(PersonalLoanBaseVO vo);
	void insertPersonalLoanOptList(PersonalLoanOptVO vo);
}
