package com.fit_nance.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.DepoOptionVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.DepositVO;
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

	public ArrayList<InstallListVO> selectInstall();
	public ArrayList<DepositListVO> selectDeposit();
	public ArrayList<PensionListVO> selectPension();
}
