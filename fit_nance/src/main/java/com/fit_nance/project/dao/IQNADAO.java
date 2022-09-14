package com.fit_nance.project.dao;

import java.util.ArrayList;

import com.fit_nance.project.model.QNAVO;

public interface IQNADAO {
	public void insertQNA(String qTitle, String qContent, String memId);
	public ArrayList<QNAVO> listMemQNA(String memId); 
	//public ArrayList<QNAVO> questionMemQNA(int qIndex);
	public QNAVO questionMemQNA(int qIndex);
	//public ArrayList<QNAVO> answerMemQNA(String memId, int qIndex);
	public QNAVO answerMemQNA(String memId, int qIndex);
}
