package com.fit_nance.project.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.context.SecurityContextPersistenceFilter;
import org.springframework.web.filter.CorsFilter;

import com.fit_nance.project.config.auth.PrincipalDetailsService;
import com.fit_nance.project.config.oauth.PrincipalOauth2UserService;
import com.fit_nance.project.dao.IMemberDAO;


@Configuration
@EnableWebSecurity // 스프링 시큐리티 필터 추가
@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true) // secured 어노테이션 활성화, preAuthorize,
																			// postAuthorize 활성화
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private PrincipalDetailsService principalDetailsService;

	@Autowired
	private PrincipalOauth2UserService principalOauth2UserService;

//	private final CorsFilter corsFilter;
//	private final IMemberDAO dao;
//	
//	public SecurityConfig(CorsFilter corsFilter, IMemberDAO dao) {
//		this.corsFilter = corsFilter;
//		this.dao = dao;
//	}
	
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
//		http.addFilterBefore(new MyFilter3(), SecurityContextPersistenceFilter.class);
//		http.csrf().disable();
//		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
//		.and()
//		.addFilter(corsFilter)
//		.formLogin().disable()
//		.httpBasic().disable()
//		.addFilter(new JwtAuthenticationFilter(authenticationManager())) //AuthenticationManager
//		.addFilter(new JwtAuthorizationFilter(authenticationManager(), dao))
//		.authorizeRequests()
//		.antMatchers("/user/**")
//		.access("hasRole('ROLE_USER') or hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')")
//		.antMatchers("/manager/**")
//		.access("hasRole('ROLE_MANAGER') or hasRole('ROLE_ADMIN')")
//		.antMatchers("/admin/**")
//		.access("hasRole('ROLE_ADMIN')")
//		.anyRequest().permitAll();
//jwt 추가 전 configure		
		http
				.csrf().disable();
		http
				.authorizeRequests()
				.antMatchers("/user/**").authenticated()
				.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
				.anyRequest().permitAll()
				.and()
				.formLogin()
				.loginPage("/loginForm")
				.usernameParameter("memId")
				.passwordParameter("memPwd")
				.loginProcessingUrl("/loginProc")
				.defaultSuccessUrl("/")
				.and()
				.oauth2Login()
				.loginPage("/loginForm")
				.userInfoEndpoint()
				.userService(principalOauth2UserService);
		// 로그아웃 폼 생성

	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(principalDetailsService).passwordEncoder(encodePwd());
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/**/*.css", "/**/*.js", "/**/image/**", "/**/*.mapper", "/favicon.ico");
	}

}
