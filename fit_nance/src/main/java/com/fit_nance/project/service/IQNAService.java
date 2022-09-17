package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.QNAVO;

public interface IQNAService {
	public void insertQNA(String qTitle, String qContent, String memId);
	public ArrayList<QNAVO> listMemQNA(String memId);
	public QNAVO questionMemQNA(int qIndex);
	public QNAVO answerMemQNA(String memId, int qIndex);
	

	// admin
	// QNA 리스트 전체 조회
	public ArrayList<QNAVO> listAllQNA();

	// QNA 문의 조회
	public QNAVO selectQuestion(int qIndex);
	
	// QNA 답변 조회
	public QNAVO selectAnswer(int qIndex);
	
	// QNA 상세 조회
	public QNAVO detailViewQNA(int qIndex);
	
	// QNA 답변 등록
	public void insertAnswer(int qIndex, String aTitle, String aContent);
	
	// QNA 답변 수정
	public void updateAnswer(int qIndex, String aTitle, String aContent);
	
	// QNA 게시글 삭제
	// 문의 사항
	public void deleteQuestion(int qIndex);
	// 문의 답변
	public void deleteAnswer(int qIndex);
}
