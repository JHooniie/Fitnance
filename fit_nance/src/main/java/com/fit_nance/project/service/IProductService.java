package com.fit_nance.project.service;

import com.fit_nance.project.model.DepoOptionVO;
import com.fit_nance.project.model.DepositVO;
import com.fit_nance.project.model.InstallOptionVO;
import com.fit_nance.project.model.InstallVO;

public interface IProductService {
	public void insertDeposit(DepositVO depo);
	public void insertDepoOption(DepoOptionVO dOption);
	public void insertInstall(InstallVO depo);
	public void insertInsOption(InstallOptionVO dOption);
}
