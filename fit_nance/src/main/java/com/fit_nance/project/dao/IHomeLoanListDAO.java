package com.fit_nance.project.dao;

import java.util.ArrayList;

import com.fit_nance.project.model.HomeLoanListVO;

public interface IHomeLoanListDAO {
	public ArrayList<HomeLoanListVO> selectHomeLoanList();
	public HomeLoanListVO selectHomeLoanDetail(String fin_prdt_cd);
}
