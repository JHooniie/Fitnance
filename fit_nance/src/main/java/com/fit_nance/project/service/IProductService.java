package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.DepoOptionVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.DepositVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.InstallOptionVO;
import com.fit_nance.project.model.InstallVO;
import com.fit_nance.project.model.PensionListVO;
import com.fit_nance.project.model.PensionVO;
import com.fit_nance.project.model.PsOptionVO;
import com.fit_nance.project.model.SavingFilterVO;

public interface IProductService {
	public void insertDeposit(DepositVO depo);
	public void insertDepoOption(DepoOptionVO dOption);
	public void insertInstall(InstallVO depo);
	public void insertInsOption(InstallOptionVO dOption);
	public void insertPension(PensionVO ps);
	public void insertPsOption(PsOptionVO psOption);
	
	public ArrayList<InstallListVO> selectInstallFilter(SavingFilterVO sf);
	
	public ArrayList<InstallListVO> selectInstall();
	public ArrayList<InstallListVO> selectInstallAll();
	public ArrayList<DepositListVO> selectDeposit();
	public ArrayList<DepositListVO> selectDepositAll();
	public ArrayList<PensionListVO> selectPension();
	public ArrayList<PensionListVO> selectPensionAll();
}
