package com.fit_nance.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.BankVO;
import com.fit_nance.project.model.FavoriteVO;
import com.fit_nance.project.model.MemberVO;

public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	public MemberVO passwordCheck(String memId, String memPwd);
	public MemberVO myInfo(String memId);
	
	// 회원가입 아이디 중복체크
	public int id_check(String memId);
	
	// 회원정보 수정
	public void updateMemInfo(MemberVO vo);
	
	// 회원정보 수정:비밀번호
	public void updateMemPwd(HashMap<String, Object> map);
	
	// 회원정보 수정:프로필 사진
	public void updateMemImg(HashMap<String, Object> map);
	
	// 회원정보 상세 보기
	public MemberVO detailViewMemInfo(String memId);
	
	// 회원 즐겨찾기 목록
	public ArrayList<FavoriteVO> favoriteListView(String memId);
	
	// 회원가입 시 은행 정보 가져오기
	public ArrayList<BankVO> listAllBank();
	
	//마이페이지 은행 이름 불러오기
	public String bankName(String memBank);
	
	//회원탈퇴
	public void withdrawal_member(MemberVO vo);
}
