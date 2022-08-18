package com.fit_nance.project.dao;

import java.util.ArrayList;

import com.fit_nance.project.model.HomeLoanListVO;

public interface IHomeLoanListDAO {
	public ArrayList<HomeLoanListVO> selectHomeLoanList();
}
