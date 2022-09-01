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

	@Override
	public ArrayList<HomeLoanFilterVO> selectHomeLoanFilter(HomeLoanFilterVO vo) {
		HashMap<String,Object> map= new HashMap<String,Object>();
		map.put("list_join_way",vo.getList_join_way());
		map.put("list_mrtg_type", vo.getList_mrtg_type());
		map.put("list_rpay_type", vo.getList_rpay_type());
		map.put("list_lend_type", vo.getList_lend_type());
		return dao.selectHomeLoanFilter(map);
	}
	
	@Override
	public ArrayList<CharterLoanListVO> selectCharterLoanList() {
		return dao.selectCharterLoanList();
	}

	@Override
	public ArrayList<PersonalLoanListVO> selectPersonalLoanList() {
		return dao.selectPersonalLoanList();
	}

	


}
