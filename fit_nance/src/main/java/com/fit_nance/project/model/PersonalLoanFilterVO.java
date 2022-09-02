package com.fit_nance.project.model;

import java.util.ArrayList;

public class PersonalLoanFilterVO {
	private ArrayList<String> list_join_way;
	private ArrayList<String> list_crdt_prdt_type;
	
	public ArrayList<String> getList_join_way() {
		return list_join_way;
	}
	public void setList_join_way(ArrayList<String> list_join_way) {
		this.list_join_way = list_join_way;
	}
	public ArrayList<String> getList_crdt_prdt_type() {
		return list_crdt_prdt_type;
	}
	public void setList_crdt_prdt_type(ArrayList<String> list_crdt_prdt_type) {
		this.list_crdt_prdt_type = list_crdt_prdt_type;
	}
}
