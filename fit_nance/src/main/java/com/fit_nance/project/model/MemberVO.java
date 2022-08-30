package com.fit_nance.project.model;

public class MemberVO {

	private int memNo;
	private String memRole;
	private String memId;
	private String memPwd;
	private String memName;
	private String memBirth;
	private boolean memEmailRecd;
	
	private String provider;
	private String providerId;
	private String certified;
	
	
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMemRole() {
		return memRole;
	}
	public void setMemRole(String memRole) {
		this.memRole = memRole;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}
	public boolean isMemEmailRecd() {
		return memEmailRecd;
	}
	public void setMemEmailRecd(boolean memEmailRecd) {
		this.memEmailRecd = memEmailRecd;
	}
	public String getProvider() {
		return provider;
	}
	public void setProvider(String provider) {
		this.provider = provider;
	}
	public String getProviderId() {
		return providerId;
	}
	public void setProviderId(String providerId) {
		this.providerId = providerId;
	}
	public String getCertified() {
		return certified;
	}
	public void setCertified(String certified) {
		this.certified = certified;
	}

	
	
	
}
