package com.fit_nance.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.DepoOptionVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.DepositVO;
import com.fit_nance.project.model.FAQVO;
import com.fit_nance.project.model.FavoriteVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.InstallOptionVO;
import com.fit_nance.project.model.InstallVO;
import com.fit_nance.project.model.PensionListVO;
import com.fit_nance.project.model.PensionVO;
import com.fit_nance.project.model.PsOptionVO;

public interface IProductDAO {
	public void insertDeposit(DepositVO depo);
	public void insertDepoOption(DepoOptionVO dOption);
	public void insertInstall(InstallVO depo);
	public void insertInsOption(InstallOptionVO dOption);
	public void insertPension(PensionVO ps);
	public void insertPsOption(PsOptionVO psOption);
	
	public ArrayList<InstallListVO> selectInstallFilter(HashMap<String,Object> map);
	public ArrayList<DepositListVO> selectDepositFilter(HashMap<String,Object> map);
	public ArrayList<PensionListVO> selectPensionFilter(HashMap<String,Object> map);

	public ArrayList<InstallListVO> selectInstall();
	public ArrayList<InstallListVO> selectInstallAll();
	public ArrayList<DepositListVO> selectDeposit();
	public ArrayList<DepositListVO> selectDepositAll();
	public ArrayList<PensionListVO> selectPension();
	public ArrayList<PensionListVO> selectPensionAll();
	
	public ArrayList<FAQVO> selectFAQ();
	public ArrayList<FAQVO> selectFAQ_search(String a);
	
	public ArrayList<InstallListVO> selectInstallSearch(String search);
	public ArrayList<DepositListVO> selectDepositSearch(String search);
	public ArrayList<PensionListVO> selectPensionSearch(String search);
	
	public void insertFavorite(FavoriteVO fv);
	public void deleteFavorite(FavoriteVO fv);
}
