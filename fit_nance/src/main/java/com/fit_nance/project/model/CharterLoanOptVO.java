package com.fit_nance.project.model;

public class CharterLoanOptVO {
	private int oIndex;
	private String fin_co_no;
	private String fin_prdt_cd;
	private String rpay_type;
	private String rpay_type_nm;
	private String lend_rate_type;
	private String lend_rate_type_nm;
	private double lend_rate_min;
	private double lend_rate_max;
	private double lend_rate_avg;
	
	public int getoIndex() {
		return oIndex;
	}
	public void setoIndex(int oIndex) {
		this.oIndex = oIndex;
	}
	public String getFin_co_no() {
		return fin_co_no;
	}
	public void setFin_co_no(String fin_co_no) {
		this.fin_co_no = fin_co_no;
	}
	public String getFin_prdt_cd() {
		return fin_prdt_cd;
	}
	public void setFin_prdt_cd(String fin_prdt_cd) {
		this.fin_prdt_cd = fin_prdt_cd;
	}
	public String getRpay_type() {
		return rpay_type;
	}
	public void setRpay_type(String rpay_type) {
		this.rpay_type = rpay_type;
	}
	public String getRpay_type_nm() {
		return rpay_type_nm;
	}
	public void setRpay_type_nm(String rpay_type_nm) {
		this.rpay_type_nm = rpay_type_nm;
	}
	public String getLend_rate_type() {
		return lend_rate_type;
	}
	public void setLend_rate_type(String lend_rate_type) {
		this.lend_rate_type = lend_rate_type;
	}
	public String getLend_rate_type_nm() {
		return lend_rate_type_nm;
	}
	public void setLend_rate_type_nm(String lend_rate_type_nm) {
		this.lend_rate_type_nm = lend_rate_type_nm;
	}
	public double getLend_rate_min() {
		return lend_rate_min;
	}
	public void setLend_rate_min(double lend_rate_min) {
		this.lend_rate_min = lend_rate_min;
	}
	public double getLend_rate_max() {
		return lend_rate_max;
	}
	public void setLend_rate_max(double lend_rate_max) {
		this.lend_rate_max = lend_rate_max;
	}
	public double getLend_rate_avg() {
		return lend_rate_avg;
	}
	public void setLend_rate_avg(double lend_rate_avg) {
		this.lend_rate_avg = lend_rate_avg;
	}
}
