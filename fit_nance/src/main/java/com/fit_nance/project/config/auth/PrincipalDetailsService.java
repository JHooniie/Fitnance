package com.fit_nance.project.config.auth;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IMemberDAO;
import com.fit_nance.project.model.MemberVO;

//login 요청이 오면 자동으로 UserDetailsService타입으로 IoC되어 있는 loadUserByUsername함수가 실행(규칙!)
@Service
public class PrincipalDetailsService implements UserDetailsService {

	@Autowired
	IMemberDAO dao;
	
	@Override
	public UserDetails loadUserByUsername(String memId) throws UsernameNotFoundException {
		System.out.println("memId :"+memId );
		
		MemberVO vo = dao.findByUserId(memId);

		
			if(vo.getMemId() == null)
				throw new UsernameNotFoundException("해당 사용자를 찾을 수 없습니다. :" + memId);
			
		
				
		return new PrincipalDetails(vo);
	}

}
