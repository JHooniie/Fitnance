package com.fit_nance.project.model;

import java.util.ArrayList;

public class InstallListFilterVO {
	ArrayList<String> rsrv_type_nm= new ArrayList<String>();
	ArrayList<String> join_member= new ArrayList<String>();
	ArrayList<String> join_way= new ArrayList<String>();
	ArrayList<String> save_trm= new ArrayList<String>();
	
	public ArrayList<String> getRsrv_type_nm() {
		return rsrv_type_nm;
	}
	public void setRsrv_type_nm(ArrayList<String> rsrv_type_nm) {
		this.rsrv_type_nm = rsrv_type_nm;
	}
	public ArrayList<String> getJoin_member() {
		return join_member;
	}
	public void setJoin_member(ArrayList<String> join_member) {
		this.join_member = join_member;
	}
	public ArrayList<String> getJoin_way() {
		return join_way;
	}
	public void setJoin_way(ArrayList<String> join_way) {
		this.join_way = join_way;
	}
	public ArrayList<String> getSave_trm() {
		return save_trm;
	}
	public void setSave_trm(ArrayList<String> save_trm) {
		this.save_trm = save_trm;
	}
	
}
