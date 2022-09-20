package com.fit_nance.project.model;

public class HomeLoanListVO { 
	private int kind;
	private int pIndex;
	private int oIndex;
	
	private String fin_co_no;
	private String kor_co_nm;
	private String fin_prdt_cd;
	private String fin_prdt_nm;
	private String join_way;
	private String loan_lmt;
	private String mrtg_type_nm;
	private String rpay_type_nm;
	private String lend_rate_type_nm;
	
	// base
	private String loan_inci_expn;
	private String erly_rpay_fee;
	private String dly_rate;
	
	//option
	private String mrtg_type;
	private String rpay_type;
	private String lend_rate_type;
	private double lend_rate_min;
	private double lend_rate_max;
	private double lend_rate_avg;
	
	
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	public int getpIndex() {
		return pIndex;
	}
	public void setpIndex(int pIndex) {
		this.pIndex = pIndex;
	}
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
	public String getMrtg_type_nm() {
		return mrtg_type_nm;
	}
	public void setMrtg_type_nm(String mrtg_type_nm) {
		this.mrtg_type_nm = mrtg_type_nm;
	}
	public String getRpay_type_nm() {
		return rpay_type_nm;
	}
	public void setRpay_type_nm(String rpay_type_nm) {
		this.rpay_type_nm = rpay_type_nm;
	}
	public String getLend_rate_type_nm() {
		return lend_rate_type_nm;
	}
	public void setLend_rate_type_nm(String lend_rate_type_nm) {
		this.lend_rate_type_nm = lend_rate_type_nm;
	}
	public String getLoan_inci_expn() {
		return loan_inci_expn;
	}
	public void setLoan_inci_expn(String loan_inci_expn) {
		this.loan_inci_expn = loan_inci_expn;
	}
	public String getErly_rpay_fee() {
		return erly_rpay_fee;
	}
	public void setErly_rpay_fee(String erly_rpay_fee) {
		this.erly_rpay_fee = erly_rpay_fee;
	}
	public String getDly_rate() {
		return dly_rate;
	}
	public void setDly_rate(String dly_rate) {
		this.dly_rate = dly_rate;
	}
	public String getMrtg_type() {
		return mrtg_type;
	}
	public void setMrtg_type(String mrtg_type) {
		this.mrtg_type = mrtg_type;
	}
	public String getRpay_type() {
		return rpay_type;
	}
	public void setRpay_type(String rpay_type) {
		this.rpay_type = rpay_type;
	}
	public String getLend_rate_type() {
		return lend_rate_type;
	}
	public void setLend_rate_type(String lend_rate_type) {
		this.lend_rate_type = lend_rate_type;
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
