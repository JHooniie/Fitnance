package com.fit_nance.project.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IMemberDAO;
import com.fit_nance.project.model.BankVO;
import com.fit_nance.project.model.DummyVO;
import com.fit_nance.project.model.FavoriteVO;
import com.fit_nance.project.model.MemberVO;

@Service
public class MemberService implements IMemberService {

	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	//회원 가입
	@Override
	public void insertMember(MemberVO vo) {
		// 비밀번호 암호화 처리한 후 mapper에게 전달
		String encodedPwd = bCryptPasswordEncoder.encode(vo.getMemPwd());
		vo.setMemPwd(encodedPwd);
		vo.setMemRole("ROLE_USER");
		
		dao.insertMember(vo);
	}

	@Override
	public int id_check(String memId) {
		return dao.id_check(memId);
	}

	//회원정보 수정
	@Override
	public void updateMemInfo(MemberVO vo) {
	
		dao.updateMemInfo(vo);
	}
	
	//회원정보 수정:비밀번호
	@Override
	public void updateMemPwd(HashMap<String, Object> map) {
		
		String encodedPwd = bCryptPasswordEncoder.encode((String)map.get("memPwd"));
		
		map.put("memPwd", encodedPwd);
		System.out.println("memPwd : " + encodedPwd);
		dao.updateMemPwd(map);
	}
	
	//회원정보 수정:프로필
	@Override
	public void updateMemImg(HashMap<String, Object> map) {
		
		dao.updateMemImg(map);
	}

	//회원 즐겨찾기 목록
	@Override
	public ArrayList<FavoriteVO> favoriteListView(String memId) {
		return dao.favoriteListView(memId);
	}
	
	//회원 정보 불러오기
	@Override
	public MemberVO detailViewMemInfo(String memId) {

		return dao.detailViewMemInfo(memId);
	}

	//회원 탈퇴
	@Override
	public void withdrawal_member(MemberVO vo) {
		dao.withdrawal_member(vo);
	}

	//은행정보 불러오기
	@Override
	public ArrayList<BankVO> listAllBank() {
		return dao.listAllBank();
	}
	
	//은행번호 은행이름 치환
	@Override
	public String bankName(String memBank) {
		return dao.bankName(memBank);
	}

	//?? 다시 확인
		@Override
		public String loginCheck(HashMap<String, Object> map) {

			return dao.loginCheck(map);
		}

		//?? 다시 확인
		@Override
		public MemberVO passwordCheck(String memId, String memPwd) {
			
			String encodedPwd = bCryptPasswordEncoder.encode(memPwd);
			
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("memId", memId);
			map.put("memPwd", encodedPwd);
			
			return dao.passwordCheck(map);

		}
		
		//?? 다시 확인
		@Override
		public MemberVO myInfo(String memId) {
			return dao.myInfo(memId);
		}
		
		
	public void dummy(DummyVO vo) {
		

			
			String user_id;
			String item_id;
			String ages;
			String[] str = {"남","여"};
			//String rating;
			
			for(int i =0; i< 100 ; i++) {
				//int num = (int)((Math.random()*8)+1);
				
				//for(int j=0;j<num ; j++) {
				user_id = String.valueOf(i);
				
				item_id = String.valueOf((int)(Math.random()*64));
				
				ages = String.valueOf(((int)(Math.random()*5)+2)*10);
				
				
				//rating = (int)((Math.random()*5)+1);
				
				long offset = Timestamp.valueOf("2021-01-01 00:00:00").getTime();
				long end = Timestamp.valueOf("2022-01-01 00:00:00").getTime();
				long diff = end - offset + 1;
				long rand = offset + (long)(Math.random() * diff);
				

				
				String gender = str[(int)(Math.random()*2)];
				
				vo.setUser_id(user_id);
				
				vo.setAges(ages);
				//vo.setRating(rating);
				vo.setGender(gender);;
				//vo.setTimestamp(rand);
				vo.setItem_id(item_id);
				dao.insertdummy(vo);
			//}
			}
			
				
	}
	
	public void dummy2(DummyVO vo) {
		

		
		String user_id;
		String item_id;
		String[] str = {"완전좋아요","좋아요","보통이에요","싫어요","완전싫어요"};
		
		for(int i =0; i< 1000 ; i++) {
			int num = (int)((Math.random()*8));
			
			for(int j=1;j<num ; j++) {
			user_id = String.valueOf(i);
			
			item_id = String.valueOf((int)(Math.random()*100));
			
			
			long offset = Timestamp.valueOf("2021-01-01 00:00:00").getTime();
			long end = Timestamp.valueOf("2022-01-01 00:00:00").getTime();
			long diff = end - offset + 1;
			long rand = offset + (long)(Math.random() * diff);
			
			
			
			String rating = str[(int)(Math.random()*5)];
			
			vo.setUser_id(user_id);
			vo.setItem_id(item_id);
			vo.setTimestamp(rand);
			vo.setRating(rating);
			dao.insertdummy2(vo);
		}
		
	}
		
		
}

	



	

	
	
}