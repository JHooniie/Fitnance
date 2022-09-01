package com.fit_nance.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.BankVO;
import com.fit_nance.project.model.MemberVO;

public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	public MemberVO passwordCheck(String memId, String memPwd);
	public MemberVO myInfo(String memId);
	
	// 회원정보 수정
	public void updateMemInfo(MemberVO vo);
	
	// 회원정보 상세 보기
	public MemberVO detailViewMemInfo(String memId);
	
	// 회원가입 시 은행 정보 가져오기
	public ArrayList<BankVO> listAllBank();
}
