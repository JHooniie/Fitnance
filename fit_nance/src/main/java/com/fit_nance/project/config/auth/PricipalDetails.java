/*
 * package com.fit_nance.project.config.auth;
 * 
 * import java.util.ArrayList; import java.util.Collection;
 * 
 * import org.springframework.security.core.GrantedAuthority; import
 * org.springframework.security.core.userdetails.UserDetails;
 * 
 * import com.fit_nance.project.model.MemberVO;
 * 
 * public class PricipalDetails implements UserDetails {
 * 
 * private MemberVO vo;
 * 
 * public PricipalDetails(MemberVO vo) { this.vo = vo; }
 * 
 * //해당 user의 권한을 리턴하는 곳
 * 
 * @Override public Collection<? extends GrantedAuthority> getAuthorities() {
 * Collection<GrantedAuthority> collect = new ArrayList<>(); collect.add(new
 * GrantedAuthority() {
 * 
 * @Override public String getAuthority() { return vo.getMemRole(); } }); return
 * collect; }
 * 
 * @Override public String getPassword() { return vo.getMemPwd(); }
 * 
 * @Override public String getUsername() { return vo.getMemId(); }
 * 
 * @Override public boolean isAccountNonExpired() { return true; }
 * 
 * @Override public boolean isAccountNonLocked() { return true; }
 * 
 * @Override public boolean isCredentialsNonExpired() { return true; }
 * 
 * @Override public boolean isEnabled() { return true; }
 * 
 * }
 */