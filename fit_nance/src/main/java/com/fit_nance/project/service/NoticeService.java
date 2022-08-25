package com.fit_nance.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.INoticeDAO;
import com.fit_nance.project.model.NoticeVO;

@Service
public class NoticeService implements INoticeService {
	
	@Autowired
	@Qualifier("INoticeDAO")
	INoticeDAO dao;
	
	@Override
	public ArrayList<NoticeVO> listAllNotice() {
		return dao.listAllNotice();
	}

	@Override
	public void insertNotice(NoticeVO notice) {
		dao.insertNotice(notice);
	}
	
	@Override
	public void updateNotice(NoticeVO notice) {
		dao.updateNotice(notice);
	}
	
	@Override
	public void deleteNotice(int noticeIndex) {
		dao.deleteNotice(noticeIndex);
	}

	@Override
	public NoticeVO detailViewNotice(int noticeIndex) {
		return dao.detailViewNotice(noticeIndex);
	}
	
}
