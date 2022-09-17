package com.fit_nance.project.dao;

import java.util.ArrayList;

import com.fit_nance.project.model.FAQVO;

public interface IFAQDAO {
	// faq 전체 조회
	public ArrayList<FAQVO> listAllFAQ();
	
	// faq 등록
	public void insertFAQ(FAQVO faq);
	
	// faq 수정
	public void updateFAQ(FAQVO faq);
	
	// faq 삭제
	public void deleteFAQ(int faqIndex);
	
	// faq 상세 보기
	public FAQVO detailViewFAQ(int faqIndex);
}
