package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.MemberVO;

public interface IManagementService {
	// 회원 전체 조회
		public ArrayList<MemberVO> listAllMember();
		
		// 회원 권한 수정
		public void updateMemberRole(String memRole);
		
		// 회원 삭제
		public void deleteMember(String memId);
		
		// 회원 상세 보기
		public MemberVO detailViewMember(String memId);
}
