package com.fit_nance.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IFAQDAO;
import com.fit_nance.project.model.FAQVO;

@Service
public class FAQService implements IFAQService {
	@Autowired
	@Qualifier("IFAQDAO")
	IFAQDAO dao;
	
	
	@Override
	public ArrayList<FAQVO> listAllFAQ() {
		return dao.listAllFAQ();
	}

	@Override
	public void insertFAQ(FAQVO faq) {
		dao.insertFAQ(faq);
	}

	@Override
	public void updateFAQ(FAQVO faq) {
		dao.updateFAQ(faq);
	}

	@Override
	public void deleteFAQ(int faqIndex) {
		dao.deleteFAQ(faqIndex);
	}

	@Override
	public FAQVO detailViewFAQ(int faqIndex) {
		return dao.detailViewFAQ(faqIndex);
	}

}
