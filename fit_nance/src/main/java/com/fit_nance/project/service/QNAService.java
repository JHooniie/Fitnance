package com.fit_nance.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IQNADAO;
import com.fit_nance.project.model.QNAVO;

@Service
public class QNAService implements IQNAService {
	@Autowired
	@Qualifier("IQNADAO")
	IQNADAO dao;
	
	@Override
	public void insertQNA(String qTitle, String qContent, String memId) {
		dao.insertQNA(qTitle, qContent, memId);
	}
	@Override
	public ArrayList<QNAVO> listMemQNA(String memId) {
		return dao.listMemQNA(memId);
	}
	@Override
	public QNAVO questionMemQNA(int qIndex) {
		return dao.questionMemQNA(qIndex);
	}
	@Override
	public QNAVO answerMemQNA(String memId, int qIndex) {
		return dao.answerMemQNA(memId, qIndex);
	}
	


}
