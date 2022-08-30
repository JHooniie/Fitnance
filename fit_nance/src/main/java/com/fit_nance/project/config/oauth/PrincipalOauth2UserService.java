package com.fit_nance.project.config.oauth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.config.oauth.provider.GoogleUserInfo;
import com.fit_nance.project.config.oauth.provider.NaverUserInfo;
import com.fit_nance.project.config.oauth.provider.OAuth2UserInfo;
import com.fit_nance.project.dao.IMemberDAO;
import com.fit_nance.project.model.MemberVO;




@Service
public class PrincipalOauth2UserService extends DefaultOAuth2UserService {

	@Autowired
	IMemberDAO dao;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordencode;
	
	
	// userRequest 는 code를 받아서 accessToken을 응답 받은 객체
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		System.out.println("userRequest: "+userRequest.getClientRegistration());
		System.out.println("userRequest: "+userRequest.getAccessToken().getTokenValue());
		OAuth2User oAuth2User = super.loadUser(userRequest); // google의 회원 프로필 조회
		
		//회원가입을 강제 진행
		OAuth2UserInfo oAuth2UserInfo = null;
		String provider = userRequest.getClientRegistration().getRegistrationId();
		if(provider.equals("google")) {
			System.out.println("구글 로그인 요청");
			oAuth2UserInfo = new GoogleUserInfo(oAuth2User.getAttributes());
		}
		else if(provider.equals("naver")) {
			System.out.println("네이버 로그인 요청");
			oAuth2UserInfo = new NaverUserInfo(oAuth2User.getAttributes());
		}
		else {
			System.out.println("지원하지 않는 포탈입니다.");
		}
		
		
		String providerId = oAuth2UserInfo.getProviderId();
		String memEmail = oAuth2UserInfo.getEmail();
		String memId = provider+"_"+memEmail;
		String memPwd = bCryptPasswordencode.encode("겟인데어");
		String memName = oAuth2UserInfo.getMemName();
		String memRole = "ROLE_USER";
		

		
		MemberVO vo = new MemberVO();
		vo.setMemId(memId);
		vo.setMemPwd(memPwd);
		vo.setMemName(memName);
		vo.setMemRole(memRole);
		vo.setProvider(provider);
		vo.setProviderId(providerId);
		
		
		if(dao.findByUserId_OAuth(memId) == null) {
			
			System.out.println(memId+"은 회원가입 필요");
			dao.insertOAuthMember(vo);
		}

		//return super.loadUser(userRequest);
		return new PrincipalDetails(vo, oAuth2User.getAttributes());


}
}