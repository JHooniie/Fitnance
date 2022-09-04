package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.NoticeVO;

public interface INoticeService {
	// 공지사항 전체 조회
	public ArrayList<NoticeVO> listAllNotice();
	
	// 공지사항 등록
	public void insertNotice(NoticeVO notice);
	
	// 공지사항 수정
	public void updateNotice(NoticeVO notice);
	
	// 공지사항 삭제
	public void deleteNotice(int noticeIndex);
	
	// 공지사항 상세 보기
	public NoticeVO detailViewNotice(int noticeIndex);
}
