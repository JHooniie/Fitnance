//package com.fit_nance.project.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//import com.fit_nance.project.config.auth.PrincipalDetailsService;
//
//@Configuration
//@EnableWebSecurity	//스프링 시큐리티 필터 추가
//public class SecurityConfig extends WebSecurityConfigurerAdapter{
//
//	@Autowired
//	private PrincipalDetailsService principalDetailsService;
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
//	
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http.csrf().disable();
//		http.authorizeRequests()
//			.antMatchers("/user/**").authenticated()
//			.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
//			.anyRequest().permitAll()
//			.and()
//			.formLogin()
//			.loginPage("/loginForm")
//			.usernameParameter("memId")
//			.loginProcessingUrl("/loginProc")
//			.defaultSuccessUrl("/");
//	}
//}
