package com.fit_nance.project.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.fit_nance.project.config.auth.PrincipalDetailsService;
import com.fit_nance.project.config.oauth.PrincipalOauth2UserService;


@Configuration
@Order(0)
@EnableWebSecurity	//스프링 시큐리티 필터 추가
@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true) // secured 어노테이션 활성화, preAuthorize, postAuthorize 활성화
public class SecurityConfig{

	@Autowired
	private PrincipalDetailsService principalDetailsService;
	
	@Autowired
	private PrincipalOauth2UserService principalOauth2UserService;

	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
	

	//private AuthenticationFailureHandler customFailureHandler;
	@Configuration
	@Order(2)
	class AdminConfig extends WebSecurityConfigurerAdapter{
		
		  @Override
	        public void configure(WebSecurity web) throws Exception {
	            web.ignoring().antMatchers("/**/*.css", "/**/*.js", "/**/image/**", "/**/*.mapper", "/favicon.ico");
	        }
		
		@Override
		protected void configure(HttpSecurity http) throws Exception {
			http
				.csrf().disable();
			http
				.authorizeRequests()
					.anyRequest().hasRole("ROLE_ADMIN")
					.antMatchers("/adminLoginForm").permitAll()
				.and()
					.formLogin()
					.loginPage("/adminLoginForm")
					.usernameParameter("memId")
					.passwordParameter("memPwd")
					.loginProcessingUrl("/adminLoginProc")
					.defaultSuccessUrl("/admin/dashboard");
//			.and()
//			.logout()
//	        .logoutUrl("/logout")
//	        .logoutSuccessUrl("/")
//	        .invalidateHttpSession(true)
//	        .permitAll()
				
		}
		
		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			auth.userDetailsService(principalDetailsService).passwordEncoder(encodePwd());
		}
		
		
	}
	
	@Configuration
	@Order(1)
	class MemberConfig extends WebSecurityConfigurerAdapter{
		@Override
		protected void configure(HttpSecurity http) throws Exception {
			http
				.csrf().disable();
			http
				.authorizeRequests()
					.antMatchers("/user/**").authenticated()
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
//			.and()
//			.logout()
//	        .logoutUrl("/logout")
//	        .logoutSuccessUrl("/")
//	        .invalidateHttpSession(true)
//	        .permitAll()
				
		}
		
		
		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			auth.userDetailsService(principalDetailsService).passwordEncoder(encodePwd());
		}
		//https://wadekang.tistory.com/37 참조 사이클 에러 문제 명시 및 해결(해결은 아래의 properties 추가로 해결)
		//https://stackoverflow.com/questions/71867218/relying-upon-circular-reference-is-discouraged-and-they-are-prohibited-by-defaul

		
	}

	
}


//package com.fit_nance.project.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.core.annotation.Order;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//import com.fit_nance.project.config.auth.PrincipalDetailsService;
//import com.fit_nance.project.config.oauth.PrincipalOauth2UserService;
//
//
//@Configuration
//@Order(1)
//@EnableWebSecurity	//스프링 시큐리티 필터 추가
//@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true) // secured 어노테이션 활성화, preAuthorize, postAuthorize 활성화
//public class SecurityConfig extends WebSecurityConfigurerAdapter{
//
//	//private AuthenticationFailureHandler customFailureHandler;
//	
//	@Autowired
//	private PrincipalDetailsService principalDetailsService;
//	
//	@Autowired
//	private PrincipalOauth2UserService principalOauth2UserService;
//
//	@Bean
//	public BCryptPasswordEncoder encodePwd() {
//		return new BCryptPasswordEncoder();
//	}
//	
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.userDetailsService(principalDetailsService).passwordEncoder(encodePwd());
//	}
//	//https://wadekang.tistory.com/37 참조 사이클 에러 문제 명시 및 해결(해결은 아래의 properties 추가로 해결)
//	//https://stackoverflow.com/questions/71867218/relying-upon-circular-reference-is-discouraged-and-they-are-prohibited-by-defaul
//	
//	
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http
//			.csrf().disable();
//		http
//			.authorizeRequests()
//				.antMatchers("/user/**").authenticated()
//				.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
//				.anyRequest().permitAll()
//			.and()
//				.formLogin()
//				.loginPage("/loginForm")
//				.usernameParameter("memId")
//				.passwordParameter("memPwd")
//				.loginProcessingUrl("/loginProc")
//				.defaultSuccessUrl("/")
//			.and()
//				.oauth2Login()
//				.loginPage("/loginForm")
//				.userInfoEndpoint()
//				.userService(principalOauth2UserService);
////		.and()
////		.logout()
////        .logoutUrl("/logout")
////        .logoutSuccessUrl("/")
////        .invalidateHttpSession(true)
////        .permitAll()
//			
//	}
//}
//
//
