package com.fit_nance.project.model;

public class NoticeVO {
	private int noticeIndex;
	private String noticeTitle;
	private String noticeContent;
	private String noticeDate;
	private String adminId;
	
	public int getNoticeIndex() {
		return noticeIndex;
	}
	public void setNoticeIndex(int noticeIndex) {
		this.noticeIndex = noticeIndex;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	
}
