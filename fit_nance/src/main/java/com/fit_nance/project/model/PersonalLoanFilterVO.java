package com.fit_nance.project.model;

import java.util.ArrayList;

public class PersonalLoanFilterVO {
	private ArrayList<String> list_join_way;
	private ArrayList<String> list_lend_type;
	
	public ArrayList<String> getList_join_way() {
		return list_join_way;
	}
	public void setList_join_way(ArrayList<String> list_join_way) {
		this.list_join_way = list_join_way;
	}
	public ArrayList<String> getList_lend_type() {
		return list_lend_type;
	}
	public void setList_lend_type(ArrayList<String> list_lend_type) {
		this.list_lend_type = list_lend_type;
	}
}
