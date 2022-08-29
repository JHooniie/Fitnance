package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.HomeLoanListVO;

public interface IHomeLoanListService {
	public ArrayList<HomeLoanListVO> selectHomeLoanList();
	public HomeLoanListVO selectHomeLoanDetail(String fin_prdt_cd);
}
