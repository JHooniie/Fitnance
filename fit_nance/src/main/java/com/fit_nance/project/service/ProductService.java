package com.fit_nance.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IProductDAO;
import com.fit_nance.project.model.DepoOptionVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.DepositVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.InstallOptionVO;
import com.fit_nance.project.model.InstallVO;
import com.fit_nance.project.model.PensionListVO;
import com.fit_nance.project.model.PensionVO;
import com.fit_nance.project.model.PsOptionVO;

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

	@Override
	public void insertPension(PensionVO ps) {
		// TODO Auto-generated method stub
		dao.insertPension(ps);
	}

	@Override
	public void insertPsOption(PsOptionVO psOption) {
		// TODO Auto-generated method stub
		dao.insertPsOption(psOption);
	}

	@Override
	public ArrayList<InstallListVO> selectInstall() {
		// TODO Auto-generated method stub
		return dao.selectInstall();
	}

	@Override
	public ArrayList<DepositListVO> selectDeposit() {
		// TODO Auto-generated method stub
		return dao.selectDeposit();
	}

	@Override
	public ArrayList<PensionListVO> selectPension() {
		// TODO Auto-generated method stub
		return dao.selectPension();
	}

}
