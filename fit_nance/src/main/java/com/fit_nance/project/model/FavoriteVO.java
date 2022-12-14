package com.fit_nance.project.model;

public class FavoriteVO {
	private int kind;
	private int oIndex;
	private String memId;
	
	//favorite 테이블 조인 값
	//공통값
	private String fin_prdt_nm;
	private String kor_co_nm;
	private String join_way;
	private String fin_co_no;
	//개별
	private int save_trm;//기간(예금)
	private double lend_rate_min;//최저금리(전세대출)(주택대출)
	private double crdt_grad_avg;//평균금리(신용대출)
	private double intr_rate;//1년기준 이율(예금)(적금)
	private double intr_rate2;//최대(적금)
	private double avg_prft_rate;

	
	public String getFin_co_no() {
		return fin_co_no;
	}
	public void setFin_co_no(String fin_co_no) {
		this.fin_co_no = fin_co_no;
	}
	public double getAvg_prft_rate() {
		return avg_prft_rate;
	}
	public void setAvg_prft_rate(double avg_prft_rate) {
		this.avg_prft_rate = avg_prft_rate;
	}
	public String getFin_prdt_nm() {
		return fin_prdt_nm;
	}
	public void setFin_prdt_nm(String fin_prdt_nm) {
		this.fin_prdt_nm = fin_prdt_nm;
	}
	public String getKor_co_nm() {
		return kor_co_nm;
	}
	public void setKor_co_nm(String kor_co_nm) {
		this.kor_co_nm = kor_co_nm;
	}
	public String getJoin_way() {
		return join_way;
	}
	public void setJoin_way(String join_way) {
		this.join_way = join_way;
	}
	public int getSave_trm() {
		return save_trm;
	}
	public void setSave_trm(int save_trm) {
		this.save_trm = save_trm;
	}
	public double getLend_rate_min() {
		return lend_rate_min;
	}
	public void setLend_rate_min(double lend_rate_min) {
		this.lend_rate_min = lend_rate_min;
	}
	public double getCrdt_grad_avg() {
		return crdt_grad_avg;
	}
	public void setCrdt_grad_avg(double crdt_grad_avg) {
		this.crdt_grad_avg = crdt_grad_avg;
	}
	public double getIntr_rate() {
		return intr_rate;
	}
	public void setIntr_rate(double intr_rate) {
		this.intr_rate = intr_rate;
	}
	public double getIntr_rate2() {
		return intr_rate2;
	}
	public void setIntr_rate2(double intr_rate2) {
		this.intr_rate2 = intr_rate2;
	}
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	public int getoIndex() {
		return oIndex;
	}
	public void setoIndex(int oIndex) {
		this.oIndex = oIndex;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
}
