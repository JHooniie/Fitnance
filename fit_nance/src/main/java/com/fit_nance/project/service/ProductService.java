package com.fit_nance.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IProductDAO;
import com.fit_nance.project.model.DepoOptionVO;
import com.fit_nance.project.model.DepositVO;
import com.fit_nance.project.model.InstallOptionVO;
import com.fit_nance.project.model.InstallVO;

@Service
public class ProductService implements IProductService {
	@Autowired
	@Qualifier("IProductDAO")
	IProductDAO dao;
	
	@Override
	public void insertDeposit(DepositVO depo) {
		// TODO Auto-generated method stub
		dao.insertDeposit(depo);
	}

	@Override
	public void insertDepoOption(DepoOptionVO dOption) {
		// TODO Auto-generated method stub
		dao.insertDepoOption(dOption);
	}

	@Override
	public void insertInstall(InstallVO depo) {
		// TODO Auto-generated method stub
		dao.insertInstall(depo);
	}

	@Override
	public void insertInsOption(InstallOptionVO dOption) {
		// TODO Auto-generated method stub
		dao.insertInsOption(dOption);
	}

}
