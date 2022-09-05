package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.CharterLoanFilterVO;
import com.fit_nance.project.model.CharterLoanListVO;
import com.fit_nance.project.model.HomeLoanFilterVO;
import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.model.PersonalLoanFilterVO;
import com.fit_nance.project.model.PersonalLoanListVO;

public interface IListLoanService {
	// 각각 전체 리스트 출력/상품 디테일/필터 순으로 작성
	
	// 주택담보
	public ArrayList<HomeLoanListVO> listAllHomeLoan();
	public HomeLoanListVO detailViewHomeLoan(int oIndex);
	public ArrayList<HomeLoanListVO> selectHomeLoanFilter(HomeLoanFilterVO vo);
	
	// 전세자금 house_loan
	public ArrayList<CharterLoanListVO> selectCharterLoanList();
	public CharterLoanListVO selectCharterLoanDetail(String fin_prdt_cd);
	public ArrayList<CharterLoanFilterVO> selectCharterLoanFilter(CharterLoanFilterVO vo);
	
	// 개인신용
	public ArrayList<PersonalLoanListVO> selectPersonalLoanList();
	public PersonalLoanListVO selectPersonalLoanDetail(String fin_prdt_cd);
	public ArrayList<PersonalLoanFilterVO> selectPersonalLoanFilter(PersonalLoanFilterVO vo);
	
}
