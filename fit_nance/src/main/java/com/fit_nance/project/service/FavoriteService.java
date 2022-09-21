package com.fit_nance.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.fit_nance.project.dao.IFavoriteDAO;
import com.fit_nance.project.model.FavoriteVO;

@Service
public class FavoriteService implements IFavoriteService {
	@Autowired
	@Qualifier("IFavoriteDAO")
	IFavoriteDAO dao;
	
	
	@Override
	public void insertInstallFavorite(FavoriteVO vo) {
		dao.insertInstallFavorite(vo);

	}

	@Override
	public void deleteInstallFavorite(FavoriteVO vo) {
		dao.deleteInstallFavorite(vo);

	}

	@Override
	public void insertDepositFavorite(FavoriteVO vo) {
		dao.insertDepositFavorite(vo);

	}

	@Override
	public void deleteDepositFavorite(FavoriteVO vo) {
		dao.deleteDepositFavorite(vo);
	}

	@Override
	public void insertPensionFavorite(FavoriteVO vo) {
		dao.insertPensionFavorite(vo);
	}

	@Override
	public void deletePensionFavorite(FavoriteVO vo) {
		dao.deletePensionFavorite(vo);
	}

	@Override
	public ArrayList<FavoriteVO> selectFavorite(FavoriteVO vo) {
		return dao.selectFavorite(vo);
	}

	@Override
	public ArrayList<FavoriteVO> searchFavorite(FavoriteVO vo) {
		return dao.searchFavorite(vo);
	}

}
