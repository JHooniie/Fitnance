package com.fit_nance.project.config.auth;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.fit_nance.project.model.MemberVO;

public class PrincipalDetails implements UserDetails, OAuth2User, Serializable {

	private MemberVO vo;
	private Map<String, Object> attributes;
	private static final long serialVersionUID = 6529685098267757690L;
	
	//일반 로그인
	public PrincipalDetails(MemberVO vo) {
		this.vo = vo;
	}

	//OAuth 로그인
	public PrincipalDetails(MemberVO vo, Map<String, Object> attributes) {
		this.vo = vo;
		this.attributes = attributes;
	}
	
	// 해당 user의 권한을 리턴하는 곳

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Collection<GrantedAuthority> collect = new ArrayList<>();
		collect.add(new GrantedAuthority() {

			@Override
			public String getAuthority() {
				return vo.getMemRole(); 
			}
		});
		return collect;
	}

	@Override
	public String getPassword() {
		return vo.getMemPwd();
	}

	@Override
	public String getUsername() {
		return vo.getMemId();
	}

	
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}

	@Override
	public Map<String, Object> getAttributes() {
		return attributes;
	}


	public MemberVO getVo() {
		return vo;
	}

	public void setVo(MemberVO vo) {
		this.vo = vo;
	}

	@Override
	public String getName() {
		return vo.getMemName();
	}
	
	public String getCertified() {
		return vo.getCertified();
	}
	
	public String getMemBirth() {
		return vo.getMemBirth();
	}
	
	public String getMemEmailRecd() {
		return vo.getMemEmailRecd();
	}
	
	public String getProvider() {
		return vo.getProvider();
	}
	public String getMemBank() {
		return vo.getMemBank();
	}
	

	public String getProviderId() {
		return vo.getProviderId();
	}

	public String getMemGender() {
		return vo.getMemGender();
	}
	
	public String getMemRole() {
		return vo.getMemRole();
	}
	
	public String getMemImg() {
		return vo.getMemImg();
	}
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(vo);
	}

	
	
	
	
}
