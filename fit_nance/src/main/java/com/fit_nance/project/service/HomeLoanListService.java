package com.fit_nance.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IHomeLoanListDAO;
import com.fit_nance.project.model.HomeLoanListVO;

@Service
public class HomeLoanListService implements IHomeLoanListService{

	@Autowired
	@Qualifier("IHomeLoanListDAO")
	IHomeLoanListDAO dao;
	
	@Override
	public ArrayList<HomeLoanListVO> selectHomeLoanList() {
		return dao.selectHomeLoanList();
	}

}
