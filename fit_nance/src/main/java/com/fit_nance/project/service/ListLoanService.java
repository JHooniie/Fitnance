package com.fit_nance.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IListLoanDAO;
import com.fit_nance.project.model.CharterLoanFilterVO;
import com.fit_nance.project.model.CharterLoanListVO;
import com.fit_nance.project.model.HomeLoanFilterVO;
import com.fit_nance.project.model.HomeLoanListVO;
import com.fit_nance.project.model.PersonalLoanFilterVO;
import com.fit_nance.project.model.PersonalLoanListVO;

@Service
public class ListLoanService implements IListLoanService{

	@Autowired
	@Qualifier("IListLoanDAO")
	IListLoanDAO dao; 
	
	// 주택담보
	@Override
	public ArrayList<HomeLoanListVO> listAllHomeLoan() {
		return dao.listAllHomeLoan();
	}

	@Override
	public HomeLoanListVO detailViewHomeLoan(int oIndex) {
		return dao.detailViewHomeLoan(oIndex);
	}

	@Override
	public ArrayList<HomeLoanListVO> selectHomeLoanFilter(HomeLoanFilterVO vo) {
		HashMap<String,Object> map= new HashMap<String,Object>();
		map.put("list_join_way",vo.getList_join_way());
		map.put("list_mrtg_type", vo.getList_mrtg_type());
		map.put("list_rpay_type", vo.getList_rpay_type());
		map.put("list_lend_type", vo.getList_lend_type());
		return dao.selectHomeLoanFilter(map);
	}
	
	// house_loan
	@Override
	public ArrayList<CharterLoanListVO> selectCharterLoanList() {
		return dao.selectCharterLoanList();
	}

	@Override
	public CharterLoanListVO selectCharterLoanDetail(String fin_prdt_cd) {
		return dao.selectCharterLoanDetail(fin_prdt_cd);
	}

	@Override
	public ArrayList<CharterLoanFilterVO> selectCharterLoanFilter(CharterLoanFilterVO vo) {
		HashMap<String,Object> map= new HashMap<String,Object>();
		map.put("list_join_way",vo.getList_join_way());
		map.put("list_rpay_type", vo.getList_rpay_type());
		map.put("list_lend_type", vo.getList_lend_type());
		return dao.selectCharterLoanFilter(map);
	}
	
	// credit_loan
	@Override
	public ArrayList<PersonalLoanListVO> selectPersonalLoanList() {
		return dao.selectPersonalLoanList();
	}

	@Override
	public PersonalLoanListVO selectPersonalLoanDetail(String fin_prdt_cd) {
		return dao.selectPersonalLoanDetail(fin_prdt_cd);
	}

	@Override
	public ArrayList<PersonalLoanFilterVO> selectPersonalLoanFilter(PersonalLoanFilterVO vo) {
		HashMap<String,Object> map= new HashMap<String,Object>();
		map.put("list_join_way",vo.getList_join_way());
		map.put("list_crdt_prdt_type", vo.getList_crdt_prdt_type());
		return dao.selectPersonalLoanFilter(map);
	}

}
