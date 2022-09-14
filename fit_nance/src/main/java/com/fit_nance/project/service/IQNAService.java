package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.QNAVO;

public interface IQNAService {
	public void insertQNA(String qTitle, String qContent, String memId);
	public ArrayList<QNAVO> listMemQNA(String memId);
	public QNAVO questionMemQNA(int qIndex);
	public QNAVO answerMemQNA(String memId, int qIndex);
	
}
