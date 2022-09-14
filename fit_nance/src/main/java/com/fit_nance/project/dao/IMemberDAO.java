package com.fit_nance.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.BankVO;
import com.fit_nance.project.model.DummyVO;
import com.fit_nance.project.model.MemberVO;

public interface IMemberDAO {
	
	public String loginCheck(HashMap<String, Object> map);
	public MemberVO passwordCheck(HashMap<String, Object> map);
	public MemberVO myInfo(String memId);
	public MemberVO findByUserId(String memId);
	public MemberVO findByUserId_OAuth(String memId);
	public ArrayList<MemberVO> basicMember(String memId);
	public void insertMember(MemberVO vo);
	public void insertOAuthMember(MemberVO vo);
	
	
	// 회원가입 아이디 중복체크
	public int id_check(String memId);
	// 회원정보 수정
	public void updateMemInfo(MemberVO vo);
	// 회원정보 상세 보기
	public MemberVO detailViewMemInfo(String memId);
	// 회원가입 시 은행 정보 가져오기
	public ArrayList<BankVO> listAllBank();
	//마이페이지 은행 이름 불러오기
	public String bankName(String memBank);
	// 회원정보 탈퇴
	public void withdrawal_member(MemberVO vo);
	
	public void insertdummy(DummyVO vo);
	public void insertdummy2(DummyVO vo);

}
