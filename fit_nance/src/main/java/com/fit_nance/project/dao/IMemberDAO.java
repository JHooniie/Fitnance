package com.fit_nance.project.dao;

import java.util.HashMap;
import java.util.Optional;

import com.fit_nance.project.model.MemberVO;

public interface IMemberDAO {
	
	public String loginCheck(HashMap<String, Object> map);
	public Optional<MemberVO> findByUserId(String memId);
	public void insertMember(MemberVO vo);
}
