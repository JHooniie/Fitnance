package com.fit_nance.project.model;

import java.util.ArrayList;

public class PensionFilterVO {
	ArrayList<String> pnsn_recp_trm_nm= new ArrayList<String>();
	ArrayList<String> mon_paym_atm_nm= new ArrayList<String>();
	ArrayList<String> pnsn_strt_age_nm= new ArrayList<String>();
	
	public ArrayList<String> getPnsn_recp_trm_nm() {
		return pnsn_recp_trm_nm;
	}
	public void setPnsn_recp_trm_nm(ArrayList<String> pnsn_recp_trm_nm) {
		this.pnsn_recp_trm_nm = pnsn_recp_trm_nm;
	}
	public ArrayList<String> getMon_paym_atm_nm() {
		return mon_paym_atm_nm;
	}
	public void setMon_paym_atm_nm(ArrayList<String> mon_paym_atm_nm) {
		this.mon_paym_atm_nm = mon_paym_atm_nm;
	}
	public ArrayList<String> getPnsn_strt_age_nm() {
		return pnsn_strt_age_nm;
	}
	public void setPnsn_strt_age_nm(ArrayList<String> pnsn_strt_age_nm) {
		this.pnsn_strt_age_nm = pnsn_strt_age_nm;
	}
}
