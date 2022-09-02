package com.fit_nance.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IManagementDAO;
import com.fit_nance.project.model.MemberVO;

@Service
public class ManagementService implements IManagementService {
	
	@Autowired
	@Qualifier("IManagementDAO")
	IManagementDAO dao;

	@Override
	public ArrayList<MemberVO> listAllMember() {
		return dao.listAllMember();
	}
		

	@Override
	public void updateMemberRole(String memRole) {
		dao.updateMemberRole(memRole);
		
	}

	@Override
	public void deleteMember(String memId) {
		dao.deleteMember(memId);
		
	}

	@Override
	public MemberVO detailViewMember(String memId) {
		return dao.detailViewMember(memId);
	}



	
	
	
}
