package com.fit_nance.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.BankVO;
import com.fit_nance.project.model.DummyVO;
import com.fit_nance.project.model.FavoriteVO;
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
	
	// 회원정보 수정:비밀번호
	public void updateMemPwd(HashMap<String, Object> map);
	
	// 회원정보 수정:프로필이미지
	public void updateMemImg(HashMap<String, Object> map);
	
	// 회원정보 상세 보기
	public MemberVO detailViewMemInfo(String memId);
	
	// 회원 즐겨찾기 목록
	// 합계
	public int favoriteListCount(String memId);
	// 적금
	public ArrayList<FavoriteVO> favoriteInstallListView(String memId);

	// 예금
	public ArrayList<FavoriteVO> favoriteDepositListView(String memId);
	
	// 연금
	public ArrayList<FavoriteVO> favoritePensionListView(String memId);
	
	// 주택담보 대출
	public ArrayList<FavoriteVO> favoriteMortgageListView(String memId);
	
	// 전세 대출
	public ArrayList<FavoriteVO> favoriteCharterListView(String memId);
	
	// 신용 대출
	public ArrayList<FavoriteVO> favoriteListCreditView(String memId);
	
	// 즐겨찾기 삭제
	public void myFavoriteDelete(HashMap<String, Object> map);
	
	// 회원가입 시 은행 정보 가져오기
	public ArrayList<BankVO> listAllBank();
	
	//마이페이지 은행 이름 불러오기
	public String bankName(String memBank);
	
	// 회원정보 탈퇴
	public void withdrawal_member(MemberVO vo);
	
	public void insertdummy(DummyVO vo);
	public void insertdummy2(DummyVO vo);

}
