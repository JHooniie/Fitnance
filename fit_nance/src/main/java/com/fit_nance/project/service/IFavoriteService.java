package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.FavoriteVO;

public interface IFavoriteService {
	public void insertInstallFavorite(FavoriteVO vo);
	public void deleteInstallFavorite(FavoriteVO vo);
	
	public void insertDepositFavorite(FavoriteVO vo);
	public void deleteDepositFavorite(FavoriteVO vo);
	
	public void insertPensionFavorite(FavoriteVO vo);
	public void deletePensionFavorite(FavoriteVO vo);
	
	public ArrayList<FavoriteVO> selectFavorite(FavoriteVO vo);
	public ArrayList<FavoriteVO> searchFavorite(FavoriteVO vo);
}
