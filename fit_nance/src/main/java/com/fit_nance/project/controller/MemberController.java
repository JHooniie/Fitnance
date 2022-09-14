package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.model.BankVO;
import com.fit_nance.project.model.DummyVO;
import com.fit_nance.project.model.MemberVO;
import com.fit_nance.project.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memService;
	
	
	@Autowired 
    private PasswordEncoder encoder;
	

	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "member/login";
	}
	
	
	//회원가입 폼 이동
	@RequestMapping("/signupForm")
	public String signupForm(Model model) {
		ArrayList<BankVO> bankList = memService.listAllBank();
		model.addAttribute("bankList", bankList);
		
		return "member/signup";
	}
	
	//인증 이메일 전송
	@RequestMapping("/email")
	public String email(Model model) {
		ArrayList<BankVO> bankList = memService.listAllBank();
		model.addAttribute("bankList", bankList);
		
		return "member/signup";
	}
	
	//회원가입
	@RequestMapping("/signup")
	public String signup(MemberVO vo) {
		memService.insertMember(vo);
		
		return "redirect:/loginForm";
	}
	
	//회원가입 - 아이디 체크
	@ResponseBody
	@RequestMapping("/id_check")
	public String id_check(@RequestParam("memId") String memId) {
		
		String result = "";
		int idCheck = memService.id_check(memId);
		System.out.println(idCheck);
		if(idCheck == 1) {
			result = "stop";
		}else {
			result = "pass";
		}
		
		return result;
	}
	

	
	@RequestMapping("/mypage")
	public String mypageForm() {

		
		return "member/myPage";
	}
	
	// 회원정보 수정 폼 열기 비밀번호 재인증 폼 이동
	@RequestMapping("/user/passwordCheckForm")
	public String passwordCheckForm() {
		return "member/update_mypage_auth";
	}
	
	//회원정보 수정 폼 열기 비밀번호 재인증
	 @RequestMapping("/user/pre_update_mypage")
	public String update_mypageForm(Authentication auth, @RequestParam("memPwd") String pwd, RedirectAttributes rtt) {
		System.out.println(pwd);
		 PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
		System.out.println(princ.getPassword());
		
		String memPwd = princ.getPassword();
		System.out.println(memPwd);
		
		if(encoder.matches(pwd, memPwd)) {
            return "redirect:./update_mypage";
        }
        else {
            rtt.addFlashAttribute("msg", "비밀번호를 다시 확인해 주세요.");
            return "redirect:./update_mypage_auth";
        }
    }

		// 회원정보 수정폼
		@RequestMapping("/user/update_mypage")
		public String update_mypageForm(Authentication auth, Model model) {
			PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
			
			String memId = princ.getUsername();
			
			ArrayList<BankVO> bankList = memService.listAllBank();
			
			MemberVO mem = memService.detailViewMemInfo(memId);
			
			
			
			
			model.addAttribute("mem", mem);
			model.addAttribute("bankList", bankList);
			
			return "/member/update_mypage";
		}

	
	// 회원정보 수정
	@RequestMapping("/user/update_memInfo")
	public String updateMemInfo(Authentication auth, MemberVO vo) {
		PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
		
		
		memService.updateMemInfo(vo);
		
		princ.getName();
		princ.getMemBirth();
		princ.getMemBank();
		princ.getMemEmailRecd();
		
		// DB에 데이터 저장한 후 공지사항 목록 화면으로 포워딩
		return "redirect:./update_mypage";
	}
	

	@RequestMapping("/update-password")
	public String update_passwordForm() {
		return "member/update_mypage_password";
	}
	
	// 회원정보 수정 폼 열기 비밀번호 재인증 폼 이동
	@RequestMapping("/user/withdrawal_passwordCheckForm")
	public String withdrawal_passwordCheckForm() {
		return "member/withhdrawal_check_member";
	}
	
	//회원정보 수정 폼 열기 비밀번호 재인증
	 @RequestMapping("/user/pre_withdrawal_check")
	public String pre_withdrawal_check(Authentication auth, @RequestParam("memPwd") String pwd, RedirectAttributes rtt) {
		System.out.println(pwd);
		 PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
		System.out.println(princ.getPassword());
		
		String memPwd = princ.getPassword();
		System.out.println(memPwd);
		
		if(encoder.matches(pwd, memPwd)) {
			
            return "redirect:./user/withdrawal_member";
        }
        else {
            rtt.addFlashAttribute("msg", "비밀번호를 다시 확인해 주세요.");
            return "redirect:/withdrawal_passwordCheckForm";
        }
    }
	 // 회원탈퇴
	 @RequestMapping("/user/withdrawal_member")
		public String withdrawal_member(Authentication auth, MemberVO vo) {
			PrincipalDetails princ = (PrincipalDetails)auth.getPrincipal();
	
			
			memService.withdrawal_member(vo);
			
			
			// DB에 데이터 저장한 후 공지사항 목록 화면으로 포워딩
			return "redirect:/logout";
		}
	
	
	//스프링 시큐리티 세션 정보 확인
	@ResponseBody
	@RequestMapping("/user")
	public String user(@AuthenticationPrincipal PrincipalDetails principalDetails) {
		System.out.println("principalDetails-user : " + principalDetails);
		return "user";
	}
	
	@ResponseBody
	@RequestMapping("/test/login")
	public String testLogin(Authentication authentication, @AuthenticationPrincipal UserDetails userDetails,MemberVO vo) {
		PrincipalDetails principalDetails = (PrincipalDetails)authentication.getPrincipal();

		principalDetails.setVo(vo);
		System.out.println("authentication : " + principalDetails.getProvider());
		System.out.println("authentication : " + principalDetails.getMemBirth());
		System.out.println("authentication : " + principalDetails.getAttributes());
		System.out.println("UserDetails : " + userDetails);
		return "세션 정보 확인";
	}

	
	//회원가입
		@RequestMapping("/dummy")
		public void dummySignup(DummyVO vo) {
			
			
			
			memService.dummy(vo);
			
			
		}

}
