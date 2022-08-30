package com.fit_nance.project.model;

public class CharterLoanListVO {
	private String pIndex;
	private String fin_co_no;
	private String kor_co_nm;
	private String fin_prdt_cd;
	private String fin_prdt_nm;
	private String join_way;
	private String loan_lmt;
	private double lend_rate_min;
	public String getpIndex() {
		return pIndex;
	}
	public void setpIndex(String pIndex) {
		this.pIndex = pIndex;
	}
	public String getFin_co_no() {
		return fin_co_no;
	}
	public void setFin_co_no(String fin_co_no) {
		this.fin_co_no = fin_co_no;
	}
	public String getKor_co_nm() {
		return kor_co_nm;
	}
	public void setKor_co_nm(String kor_co_nm) {
		this.kor_co_nm = kor_co_nm;
	}
	public String getFin_prdt_cd() {
		return fin_prdt_cd;
	}
	public void setFin_prdt_cd(String fin_prdt_cd) {
		this.fin_prdt_cd = fin_prdt_cd;
	}
	public String getFin_prdt_nm() {
		return fin_prdt_nm;
	}
	public void setFin_prdt_nm(String fin_prdt_nm) {
		this.fin_prdt_nm = fin_prdt_nm;
	}
	public String getJoin_way() {
		return join_way;
	}
	public void setJoin_way(String join_way) {
		this.join_way = join_way;
	}
	public String getLoan_lmt() {
		return loan_lmt;
	}
	public void setLoan_lmt(String loan_lmt) {
		this.loan_lmt = loan_lmt;
	}
	public double getLend_rate_min() {
		return lend_rate_min;
	}
	public void setLend_rate_min(double lend_rate_min) {
		this.lend_rate_min = lend_rate_min;
	}
}
