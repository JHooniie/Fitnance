package com.fit_nance.project.dao;

import java.util.ArrayList;

import com.fit_nance.project.model.NoticeVO;

public interface INoticeDAO {
	// 공지사항 전체 조회
	public ArrayList<NoticeVO> listAllNotice();
	
	// 공지사항 등록
	public void insertNotice(NoticeVO notice);
}
