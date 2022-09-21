package com.fit_nance.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.model.BankVO;
import com.fit_nance.project.model.DummyVO;
import com.fit_nance.project.model.FavoriteVO;
import com.fit_nance.project.model.MemberVO;
import com.fit_nance.project.service.CaptchaService;
import com.fit_nance.project.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memService;

	@Autowired
	private PasswordEncoder encoder;

	@Autowired
	CaptchaService captcha;

	@RequestMapping("/loginForm")
	public String loginForm(Model model) {

		String captcha_key = captcha.getCaptcha_key();
		
		String captcha_img = captcha.captchaImage(captcha_key);
		model.addAttribute("captcha_img", captcha_img);
		
		return "member/login";
	}

	// 회원가입 폼 이동
	@RequestMapping("/signupForm")
	public String signupForm(Model model) {
		ArrayList<BankVO> bankList = memService.listAllBank();
		model.addAttribute("bankList", bankList);

		return "member/signup";
	}

	// 회원가입
	@RequestMapping("/signup")
	public String signup(MemberVO vo) {
		memService.insertMember(vo);

		return "redirect:/loginForm";
	}

	// 회원가입 - 아이디 체크
	@ResponseBody
	@RequestMapping("/id_check")
	public String id_check(@RequestParam("memId") String memId) {

		String result = "";
		int idCheck = memService.id_check(memId);
		System.out.println(idCheck);
		if (idCheck == 1) {
			result = "stop";
		} else {
			result = "pass";
		}

		return result;
	}

	// 마이페이지 폼 이동
	@RequestMapping("/user/mypage")
	public String mypageForm(Authentication auth, Model model) {
		PrincipalDetails princ = (PrincipalDetails) auth.getPrincipal();
		String memId = princ.getUsername();
		String memImg = princ.getMemImg();
		System.out.println(memId);
		MemberVO mem = memService.detailViewMemInfo(memId);
		
		int count = memService.favoriteListCount(memId);
		ArrayList<FavoriteVO> instList = memService.favoriteInstallListView(memId);
		ArrayList<FavoriteVO> depList = memService.favoriteDepositListView(memId);
		ArrayList<FavoriteVO> penList = memService.favoritePensionListView(memId);
		ArrayList<FavoriteVO> morList = memService.favoriteMortgageListView(memId);
		ArrayList<FavoriteVO> charList = memService.favoriteCharterListView(memId);
		ArrayList<FavoriteVO> crdList = memService.favoriteListCreditView(memId);
		
		model.addAttribute("count",count);
		model.addAttribute("instList",instList);
		model.addAttribute("depList",depList);
		model.addAttribute("penList",penList);
		model.addAttribute("morList",morList);
		model.addAttribute("charList",charList);
		model.addAttribute("crdList",crdList);
		model.addAttribute("mem",mem);
		model.addAttribute("memImg",memImg);
		
		return "member/myPage";

	}
	
	// 즐겨찾기 삭제
	@RequestMapping("/user/myFavoriteDelete")
	public String myFavoriteDelete(@RequestParam HashMap<String, Object> map, Authentication auth) {
		PrincipalDetails princ = (PrincipalDetails) auth.getPrincipal();
	
		
		
		return null;
	}
	

	// 회원정보 수정 폼 열기 비밀번호 재인증 폼 이동
	@RequestMapping("/user/passwordCheckForm")
	public String passwordCheckForm() {
		return "member/update_mypage_auth";
	}

	// 회원정보 수정 폼 열기 비밀번호 재인증
	@RequestMapping("/user/pre_update_mypage")
	public String update_mypageForm(Authentication auth, @RequestParam("memPwd") String pwd, RedirectAttributes rtt) {
		System.out.println(pwd);
		PrincipalDetails princ = (PrincipalDetails) auth.getPrincipal();
		System.out.println(princ.getPassword());

		String memPwd = princ.getPassword();
		System.out.println(memPwd);

		if (encoder.matches(pwd, memPwd)) {
			return "redirect:./update_mypage";
		} else {
			rtt.addFlashAttribute("msg", "비밀번호를 다시 확인해 주세요.");
			return "redirect:./update_mypage_auth";
		}
	}

	// 회원정보 수정폼
	@RequestMapping("/user/update_mypage")
	public String update_mypageForm(Authentication auth, Model model) {
		//세션 정보 => DB 회원정보
		PrincipalDetails princ = (PrincipalDetails) auth.getPrincipal();
		String memId = princ.getUsername();
		ArrayList<BankVO> bankList = memService.listAllBank();

		MemberVO mem = memService.detailViewMemInfo(memId);
		
				
		System.out.println("세션값1 :" + princ.toString());
		System.out.println("생년월일 : " + princ.getMemBirth());
		model.addAttribute("mem", mem);
		model.addAttribute("bankList", bankList);
		
		String savedFileName = "profile_image.png";
		System.out.println("이미지 값 :"+princ.getMemImg());
		if(princ.getMemImg() != null) {
			savedFileName = princ.getMemImg();
		}
		
		model.addAttribute("savedFileName", savedFileName);
		
		return "/member/update_mypage";
	}


	// 회원정보 수정
	@RequestMapping("/user/update_memInfo")
	public String updateMemInfo(@RequestParam HashMap<String, Object> map, @RequestParam("input-upload-profileImg") MultipartFile file,
								Authentication auth, MemberVO vo, Model model) throws IOException {
		PrincipalDetails princ = (PrincipalDetails) auth.getPrincipal();
		ArrayList<BankVO> bankList = memService.listAllBank();
		
		model.addAttribute("bankList", bankList);
		// 1. 파일 저장 경로 설정 : 실제 서비스되는 위치 (프로젝트 외부에 저장)
		String uploadPath = "/usr/local/project/fitnance_images/upload/";
 
		// 2. 원본 파일 이름 설정
		String originalFileName = file.getOriginalFilename();
		
		// 3. 파일 이름이 중복되지 않도록 파일 이름 변경 : 서버에 저장할 이름


		String savedFileName = princ.getUsername()+"_"+originalFileName;
		
		// 4. 파일 생성
		File newFile = new File(uploadPath + savedFileName);
		
		// 5. 서버로 전송
		file.transferTo(newFile);
		
		memService.updateMemImg(map);
		
		
		
		String membirth = (String)map.get("birth_year") + (String)map.get("birth_month") + (String)map.get("birth_day");
		
		vo.setMemBirth(membirth);
		
		String memEmailRecd = (String)map.get("memEmailRecd");
		
		
		if(map.get("memEmailRecd") == "N") {
			vo.setMemEmailRecd(null);
		}else {
			vo.setMemEmailRecd(memEmailRecd);
		}
		
		
		memService.updateMemInfo(vo);
		System.out.println("세션값2 :" + princ.toString());
		princ.setVo(vo);

		princ.getName();
		princ.getMemBirth();
		princ.getMemBank();
		princ.getMemEmailRecd();
		princ.getMemGender();
		princ.getMemImg();
		princ.getMemRole();
		princ.getPassword();
		princ.getProvider();
		princ.getProviderId();
		

		return "/member/update_mypage";
	}

	@RequestMapping("/user/update-passwordForm")
	public String update_passwordForm() {
		return "member/update_mypage_password";
	}
	
	// 회원정보 수정 폼 열기 비밀번호 재인증
		@RequestMapping("/user/pre_update_password")
		public String update_password(@RequestParam HashMap<String, Object> map) {
			
			String memPwd =(String)map.get("memPwd");
			String memPwd_chk =(String)map.get("memPwd_chk");
			System.out.println(memPwd);
			System.out.println(memPwd_chk);
			if(!memPwd.equals(memPwd_chk)) {
				
				return "redirect:./update-passwordForm";
				
			}else {
				System.out.println("비밀번호 통과 : "+map.get("memPwd"));
				memService.updateMemPwd(map);
			}
			
			return "redirect:/logout";

		}
	
	// 회원탈퇴 폼 열기 비밀번호 재인증 폼 이동
	@RequestMapping("/user/withdrawal_passwordCheckForm")
	public String withdrawal_passwordCheckForm() {
		return "member/withhdrawal_check_member";
	}

	// 회원 탈퇴 폼 열기 비밀번호 재인증
	@RequestMapping("/user/pre_withdrawal_check")
	public String pre_withdrawal_check(Authentication auth, @RequestParam("memPwd") String pwd,
			RedirectAttributes rtt) {
		System.out.println(pwd);
		PrincipalDetails princ = (PrincipalDetails) auth.getPrincipal();
		System.out.println(princ.getPassword());

		String memPwd = princ.getPassword();
		System.out.println(memPwd);

		if (encoder.matches(pwd, memPwd)) {

			return "redirect:./user/withdrawal_member";
		} else {
			rtt.addFlashAttribute("msg", "비밀번호를 다시 확인해 주세요.");
			return "redirect:/withdrawal_passwordCheckForm";
		}
	}

	// 회원탈퇴
	@RequestMapping("/user/withdrawal_member")
	public String withdrawal_member(Authentication auth, MemberVO vo) {
		PrincipalDetails princ = (PrincipalDetails) auth.getPrincipal();

		memService.withdrawal_member(vo);

		// DB에 데이터 저장한 후 공지사항 목록 화면으로 포워딩
		return "redirect:/logout";
	}

	// 스프링 시큐리티 세션 정보 확인
	@ResponseBody
	@RequestMapping("/user")
	public String user(@AuthenticationPrincipal PrincipalDetails principalDetails) {
		System.out.println("principalDetails-user : " + principalDetails);
		return "user";
	}

	@ResponseBody
	@RequestMapping("/test/login")
	public String testLogin(Authentication authentication, @AuthenticationPrincipal MemberVO vo) {
		//PrincipalDetails principalDetails = (PrincipalDetails) authentication.getPrincipal();

//		principalDetails.setVo(vo);
//		System.out.println("authentication : " + principalDetails.getProvider());
//		System.out.println("authentication : " + principalDetails.getMemBirth());
//		System.out.println("authentication : " + principalDetails.getAttributes());
		System.out.println("UserDetails : " + vo.getMemId());
		return "세션 정보 확인";
	}

	// 회원가입
	@RequestMapping("/dummy")
	public void dummySignup(DummyVO vo) {

		memService.dummy(vo);

	}

	@RequestMapping("/dummy2")
	public void dummySignup2(DummyVO vo) {

		memService.dummy2(vo);

	}
}
