package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.DepositFilterVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.InstallListFilterVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.PensionFilterVO;
import com.fit_nance.project.model.PensionListVO;

public interface IListSavingService {
	// 각각 전체 리스트 출력/상품 디테일/필터 순으로 작성
	
	// 적금
	public ArrayList<InstallListVO> selectInstallList();
	public InstallListVO selectInstallDetail(int oIndex);
	public ArrayList<InstallListVO> selectInstallFilter(InstallListFilterVO vo);
	
	// 예금
	public ArrayList<DepositListVO> selectDepositList();
	public DepositListVO selectDepositDetail(int oIndex);
	public ArrayList<DepositListVO> selectDepositFilter(DepositFilterVO vo); 
	
	// 연금
	public ArrayList<PensionListVO> selectPensionList();
	public PensionListVO selectPensionDetail(int oIndex);
	public ArrayList<PensionListVO> selectPensionFilter(PensionFilterVO vo); 
}
