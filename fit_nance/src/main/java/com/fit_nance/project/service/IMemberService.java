package com.fit_nance.project.service;

import java.util.HashMap;

import com.fit_nance.project.model.MemberVO;

public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
}
