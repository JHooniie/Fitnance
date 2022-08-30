package com.fit_nance.project.service;

import java.util.ArrayList;
import java.util.HashMap;

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
import com.fit_nance.project.model.SavingFilterVO;

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

	@Override
	public ArrayList<InstallListVO> selectInstallFilter(SavingFilterVO sf) {
		// TODO Auto-generated method stub
		HashMap<String,Object> map= new HashMap<String,Object>();
		map.put("rsrv_type_nm",sf.getRsrv_type_nm());
		map.put("join_member", sf.getJoin_member());
		map.put("join_way", sf.getJoin_way());
		map.put("save_trm", sf.getSave_trm());
		return dao.selectInstallFilter(map);
	}

}
