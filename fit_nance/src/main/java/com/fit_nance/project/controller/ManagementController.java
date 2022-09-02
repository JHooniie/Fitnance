package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fit_nance.project.model.MemberVO;
import com.fit_nance.project.service.ManagementService;

@Controller
public class ManagementController {
	
	@Autowired
	ManagementService mService;
	
	// 공지사항 전체 리스트 조회
	@RequestMapping("/admin/management")
	public String viewManegement(Model model) {
		ArrayList<MemberVO> memList = mService.listAllMember();
		model.addAttribute("memList", memList);
		
		return "admin/management/admin_management";
	}
	
	// 공지사항 등록 폼 열기
//	@RequestMapping("/admin/registNotice")
//	public String viewNoticeForm() {
//		return "admin/notice/admin_notice_form";
//	}
//	
//	// 공지사항 등록
//	@RequestMapping("/admin/insertNotice")
//	public String insertNotice(NoticeVO notice) {
//		nService.insertNotice(notice);
//		
//		// DB에 데이터 저장한 후 공지사항 목록 화면으로 포워딩
//		return "redirect:/admin/notice";
////		return "redirect:./notice";
//	}
//	
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
	@RequestMapping("/admin/updateMemberRole")
	public String updateMemberRole(@RequestParam("memRole") String memRole ) {
		mService.updateMemberRole(memRole);
		
		// DB에 데이터 저장한 후 회원 관리 목록 화면으로 포워딩
		return "redirect:./management";
	}
//	
//	// 공지사항 삭제
//	@ResponseBody
//	@RequestMapping("/admin/deleteNotice")
//	public int deleteCart(@RequestParam("checkArr[]") ArrayList<Integer> chkArr) {
//		int result = 0;
//		
//		if(chkArr != null) {
//			for(int noticeIndex : chkArr) {
//				nService.deleteNotice(noticeIndex);
//			}
//			result = 1;
//		}
//		
//		return result;
//	}
//	
//	// 공지사항 상세 보기
//	@RequestMapping("/admin/memberDetailView/{noticeIndex}")
//	public String detailViewProduct(@PathVariable int noticeIndex, Model model) {
//		NoticeVO notice = nService.detailViewNotice(noticeIndex);
//		model.addAttribute("notice", notice);
//		
//		return "admin/notice/admin_notice_detail";
//	}

}
