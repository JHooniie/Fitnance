package com.fit_nance.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.MemberVO;

public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	public int passwordCheck(String memId, String memPwd);
	public MemberVO myInfo(String memId);
}
