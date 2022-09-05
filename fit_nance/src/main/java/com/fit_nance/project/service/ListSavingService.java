package com.fit_nance.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IListSavingDAO;
import com.fit_nance.project.model.DepositFilterVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.InstallListFilterVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.PensionFilterVO;
import com.fit_nance.project.model.PensionListVO;

@Service
public class ListSavingService implements IListSavingService {
	
	@Autowired
	@Qualifier("IListSavingDAO")
	IListSavingDAO dao;
	
	// 적금	
	@Override
	public ArrayList<InstallListVO> selectInstallList() {
		return dao.selectInstallList();
	}

	@Override
	public InstallListVO selectInstallDetail(int oIndex) {
		return dao.selectInstallDetail(oIndex);
	}

	@Override
	public ArrayList<InstallListVO> selectInstallFilter(InstallListFilterVO vo) {
		HashMap<String,Object> map= new HashMap<String,Object>();
		
		map.put("rsrv_type_nm",vo.getRsrv_type_nm());
		map.put("join_member", vo.getJoin_member());
		map.put("join_way", vo.getJoin_way());
		map.put("save_trm", vo.getSave_trm());
		
		return dao.selectInstallFilter(map);
	}
	
	// 예금
	@Override
	public ArrayList<DepositListVO> selectDepositList() {
		return dao.selectDepositList();
	}

	@Override
	public DepositListVO selectDepositDetail(int oIndex) {
		return dao.selectDepositDetail(oIndex);
	}

	@Override
	public ArrayList<DepositListVO> selectDepositFilter(DepositFilterVO vo) {
		HashMap<String,Object> map= new HashMap<String,Object>();
		
		map.put("join_member", vo.getJoin_member());
		map.put("join_way", vo.getJoin_way());
		map.put("save_trm", vo.getSave_trm());
		
		return dao.selectDepositFilter(map);
	}
	
	// 연금
	@Override
	public ArrayList<PensionListVO> selectPensionList() {
		return dao.selectPensionList();
	}

	@Override
	public PensionListVO selectPensionDetail(int oIndex) {
		return dao.selectPensionDetail(oIndex);
	}

	@Override
	public ArrayList<PensionListVO> selectPensionFilter(PensionFilterVO vo) {
		HashMap<String,Object> map= new HashMap<String,Object>();
		
		map.put("pnsn_recp_trm_nm", vo.getPnsn_recp_trm_nm());
		map.put("mon_paym_atm_nm", vo.getMon_paym_atm_nm());
		map.put("pnsn_strt_age_nm", vo.getPnsn_strt_age_nm());
		
		return dao.selectPensionFilter(map);
	}

}
