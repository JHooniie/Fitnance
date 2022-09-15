package com.fit_nance.project.dao;

import java.util.ArrayList;

import com.fit_nance.project.model.CharterLoanBaseVO;
import com.fit_nance.project.model.CharterLoanOptVO;
import com.fit_nance.project.model.FavoriteVO;
import com.fit_nance.project.model.HomeLoanBaseVO;
import com.fit_nance.project.model.HomeLoanOptVO;
import com.fit_nance.project.model.PersonalLoanBaseVO;
import com.fit_nance.project.model.PersonalLoanOptVO;

public interface ILoanDAO {
	
	// HomeLoan
	void insertHomeLoanBaseList(HomeLoanBaseVO vo);
	void insertHomeLoanOptList(HomeLoanOptVO vo);
	void insertHomeLoanFavorite(int index, String kind);
	
	// CharterLoan
	void insertCharterLoanBaseList(CharterLoanBaseVO vo);
	void insertCharterLoanOptList(CharterLoanOptVO vo);
	
	// PersonalLoan
	void insertPersonalLoanBaseList(PersonalLoanBaseVO vo);
	void insertPersonalLoanOptList(PersonalLoanOptVO vo);
	
}
