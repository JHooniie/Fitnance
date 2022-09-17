package com.fit_nance.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fit_nance.project.model.QNAVO;
import com.fit_nance.project.service.QNAService;

@Controller
public class QNAController {

	@Autowired
	QNAService qService;
	
	// qna 전체 리스트 조회
	@RequestMapping("/admin/qna")
	public String viewQNA(Model model) {
		//System.out.println("관리자 문의사항 페이지");
		ArrayList<QNAVO> qnaList = qService.listAllQNA();
		
		model.addAttribute("qnaList", qnaList);
		return "admin/qna/admin_qna";
	}
	
	// qna 상세 
	@RequestMapping("/admin/QNADetailView/{qIndex}")
	public String detailViewQNA(@PathVariable int qIndex, Model model) {
		int status = 0;
		
		QNAVO q = qService.selectQuestion(qIndex);
		model.addAttribute("q", q);
		
		QNAVO a = qService.selectAnswer(qIndex);
		model.addAttribute("a", a);
		
//		System.out.println("qIndex : "+qIndex);
//		System.out.println("q : "+q);
//		System.out.println("a : "+a);
		
		if(a != null) 
			status = 1;
		else
			status = 0;
		model.addAttribute("status", status);
		
		return "admin/qna/admin_qna_detail";
	}
	
	// qna 답변 등록 페이지
	@RequestMapping("/admin/registAnswer/{qIndex}")
	public String registerAnsertForm(@PathVariable int qIndex, Model model) {
		model.addAttribute("qIndex", qIndex);
		return "admin/qna/admin_qna_form";
	}
	
	// qna 답변 등록 처리
	@RequestMapping("/admin/insertAnswer/{qIndex}")
	public String insertAnsertForm(@PathVariable int qIndex
								, @RequestParam("aTitle") String aTitle
								, @RequestParam("aContent") String aContent) {
		qService.insertAnswer(qIndex, aTitle, aContent);
		return "redirect:/admin/qna";
	}
	
	// qna 답변 수정 페이지
	@RequestMapping("/admin/updateAnswer/{qIndex}")
	public String updateAnswerForm(@PathVariable int qIndex, Model model) {
		QNAVO a = qService.selectAnswer(qIndex);
		model.addAttribute("a", a);
		
		return "admin/qna/admin_qna_update_form";
	}

	// qna 답변 수정 처리
	@RequestMapping("/admin/updateQNA/{qIndex}")
	public String updateQNA(@PathVariable int qIndex
							, @RequestParam("aTitle") String aTitle
							, @RequestParam("aContent") String aContent) {
		qService.updateAnswer(qIndex, aTitle, aContent);
		return "redirect:/admin/QNADetailView/{qIndex}";
	}

	// qna 게시글 삭제
	@ResponseBody
	@RequestMapping("/admin/deleteQNA")
	public int deleteQNA(@RequestParam("checkArr") ArrayList<Integer> chkArr) {
		int result = 0;
		
		if(chkArr != null) {
			for(int qIndex : chkArr) {
				System.out.println("qIndex : "+qIndex);
				qService.deleteAnswer(qIndex);
				qService.deleteQuestion(qIndex);
			}
			result = 1;
		}
		return result;
	}
}
