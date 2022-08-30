package com.fit_nance.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.model.MemberVO;
import com.fit_nance.project.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memService;
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "member/login";
	}
	

	
//	@ResponseBody
//	@RequestMapping("/login")
//	public String loginCheck(@RequestParam HashMap<String, Object> param, HttpSession session) {
//		// 로그인 체크 결과 : 아이디와 비밀번호 전달하고 로그인 성공하면 아이디 반환
//		String memId = memService.loginCheck(param);
//		String result = "fail";
//		// 아이디와 비밀번호 일치하면
//		if(memId != null) {
//			// 로그인 성공하면 세션 변수 지정
//			session.setAttribute("sid", memId);
//			result = "success";
//		}
//		
//		return result;
//	}
	
	// 로그아웃
//	@RequestMapping("/logout")
//	public String userLogout(HttpSession session) {
//		session.invalidate();
//		return "redirect:/";
//	}
	
	@RequestMapping("/signup")
	public String signup(MemberVO vo) {
		memService.insertMember(vo);
		
		return "redirect:/loginForm";
	}
	
	@ResponseBody
	@RequestMapping("/user")
	public String user(@AuthenticationPrincipal PrincipalDetails principalDetails) {
		System.out.println("principalDetails-user : " + principalDetails.getAttributes());
		return "user";
	}
	
	@ResponseBody
	@RequestMapping("/test/login")
	public String testLogin(
			Authentication authentication,
			@AuthenticationPrincipal UserDetails userDetails,
			MemberVO vo) {
		PrincipalDetails principalDetails = (PrincipalDetails)authentication.getPrincipal();

		
		System.out.println("authentication : " + principalDetails.getProvider());
		System.out.println("authentication : " + principalDetails.getMemBirth());
		System.out.println("authentication : " + principalDetails.toString());
		System.out.println("UserDetails : " + userDetails);
		return "세션 정보 확인";
	}
	
	@RequestMapping("/signupForm")
	public String signupForm() {
		return "member/signup";
	}
	
	@RequestMapping("/mypage")
	public String mypageForm() {

		return "member/myPage";
	}
	
//	@RequestMapping("/mypage/{memId}")
//	public String mypageForm(@PathVariable String memId, Model model) {
//		MemberVO mem = memService.myInfo(memId);
//		
//		// 모델 설정
//		model.addAttribute("mem", mem);
//		return "member/myPage";
//	}
	
	@RequestMapping("/passwordCheckForm")
	public String passwordCheckForm() {
		return "member/update_mypage_auth";
	}
	
//	@ResponseBody
//	@RequestMapping("/passwordCheck")
//	public String passwordCheck(MemberVO vo, HttpSession session) {
//
//		String memId = (String)session.getAttribute("sid");
//
//		vo.setMemId(memId);
//		
//		
//		String result = memService.passwordCheck(memId);
//		String memPwd = MemberVO
//		// 아이디와 비밀번호 일치하면
//		if(memPwd != null) {
//			// 로그인 성공하면 세션 변수 지정
//			result = "success";
//		}
//		
//		return result;
//	}
//	
	@RequestMapping("/update-mypage")
	public String update_mypageForm() {
		return "member/update_mypage";
	}
	
	@RequestMapping("/update-password")
	public String update_passwordForm() {
		return "member/update_mypage_password";
	}
	
	
}
