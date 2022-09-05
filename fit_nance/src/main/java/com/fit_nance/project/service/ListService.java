package com.fit_nance.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IListDAO;
import com.fit_nance.project.model.InstallListFilterVO;
import com.fit_nance.project.model.InstallListVO;

@Service
public class ListService implements IListService {
	
	@Autowired
	@Qualifier("IListDAO")
	IListDAO dao;

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
		// TODO Auto-generated method stub
		HashMap<String,Object> map= new HashMap<String,Object>();
		map.put("rsrv_type_nm",vo.getRsrv_type_nm());
		map.put("join_member", vo.getJoin_member());
		map.put("join_way", vo.getJoin_way());
		map.put("save_trm", vo.getSave_trm());
		
		return dao.selectInstallFilter(map);
	}

}
