package com.fit_nance.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fit_nance.project.model.MemberVO;
import com.fit_nance.project.service.ManagementService;

@Controller
public class ManagementController {
	
	@Autowired
	ManagementService mService;
	
	// 회원정보 전체 리스트 조회
	@RequestMapping("/admin/management")
	public String viewManegement(Model model) {
		ArrayList<MemberVO> memList = mService.listAllMember();
		model.addAttribute("memList", memList);
		
		return "admin/management/admin_management";
	}
	
	// 공지사항 수정 폼 열기 요청 처리
	@RequestMapping("/admin/memberDetailView/{memId}")
	public String memberDetailView(@PathVariable String memId, Model model) {
		// 수정할 상품 번호 받아서, detailViewNotice() 메소드 호출하면서 전달하고
		// 해당 상품 정보 1개 받아서 모델 설정
		MemberVO mem = mService.detailViewMember(memId);
		model.addAttribute("mem", mem);
		
		return "admin/management/admin_management_detail";
	}
	
	// 회원 권한 수정
	@ResponseBody
	@RequestMapping("/admin/updateMemberRole")
	public String updateMemberRole(@RequestParam HashMap<String, Object> param ) {
		mService.updateMemberRole(param);
		String result = "fail";
		System.out.println(param.get("memRole"));
		
		if(param.get("memRole") == "ROLE_USER") {
			result = "success";
		}
		else if(param.get("memRole") == "ROLE_ADMIN") {
			result = "success";
		}
		// DB에 데이터 저장한 후 회원 관리 목록 화면으로 포워딩
		return result;
	}

}
