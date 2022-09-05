package com.fit_nance.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.CharterLoanFilterVO;
import com.fit_nance.project.model.CharterLoanListVO;
import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.model.PersonalLoanFilterVO;
import com.fit_nance.project.model.PersonalLoanListVO;

public interface IListLoanDAO {
	// 각각 전체 리스트 출력/상품 디테일/필터 순으로 작성
	
	// 주택담보
	public ArrayList<HomeLoanListVO> listAllHomeLoan();
	public HomeLoanListVO detailViewHomeLoan(int oIndex);
	public ArrayList<HomeLoanListVO> selectHomeLoanFilter(HashMap<String, Object> map);
	
	// 전세자금
	public ArrayList<CharterLoanListVO> selectCharterLoanList();
	public CharterLoanListVO selectCharterLoanDetail(String fin_prdt_cd);
	public ArrayList<CharterLoanFilterVO> selectCharterLoanFilter(HashMap<String, Object> map);
	
	// 개인신용
	public ArrayList<PersonalLoanListVO> selectPersonalLoanList();
	public PersonalLoanListVO selectPersonalLoanDetail(String fin_prdt_cd);
	public ArrayList<PersonalLoanFilterVO> selectPersonalLoanFilter(HashMap<String, Object> map);
}
