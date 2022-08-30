package com.fit_nance.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IMemberDAO;
import com.fit_nance.project.model.MemberVO;

@Service
public class MemberService implements IMemberService {

	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	
//	@Autowired
//	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public void insertMember(MemberVO vo) {
		// 비밀번호 암호화 처리한 후 mapper에게 전달
//		String encodedPwd = bCryptPasswordEncoder.encode(vo.getMemPwd());
//		vo.setMemPwd(encodedPwd);
		vo.setMemRole("ROLE_USER");
		
		dao.insertMember(vo);
	}

	@Override
	public String loginCheck(HashMap<String, Object> map) {

		return dao.loginCheck(map);
	}

	@Override
	public int passwordCheck(String memId, String memPwd) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memId", memId);
		map.put("memPwd", memPwd);
		
		return dao.passwordCheck(map);

	}

	@Override
	public MemberVO myInfo(String memId) {
		return dao.myInfo(memId);
	}

}
