package com.fit_nance.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.MemberVO;
import com.fit_nance.project.model.NoticeVO;

public interface IMemberDAO {
	
	public String loginCheck(HashMap<String, Object> map);
	public MemberVO passwordCheck(HashMap<String, Object> map);
	public MemberVO myInfo(String memId);
	public MemberVO findByUserId(String memId);
	public MemberVO findByUserId_OAuth(String memId);
	public ArrayList<MemberVO> basicMember(String memId);
	public void insertMember(MemberVO vo);
	public void insertOAuthMember(MemberVO vo);
	
	
	// 회원정보 수정
	public void updateMemInfo(MemberVO vo);
	// 회원정보 상세 보기
	public MemberVO detailViewMemInfo(String memId);
	
	
}
