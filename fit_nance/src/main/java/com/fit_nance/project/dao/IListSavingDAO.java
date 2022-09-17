package com.fit_nance.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.InstallListVO;
import com.fit_nance.project.model.PensionListVO;

public interface IListSavingDAO {
	// 각각 전체 리스트 출력/상품 디테일/필터 순으로 작성
	
	// 적금
	public ArrayList<InstallListVO> selectInstallList();
	public InstallListVO selectInstallDetail(int oIndex);
	public ArrayList<InstallListVO> selectInstallFilter(HashMap<String,Object> map);
	public ArrayList<InstallListVO> selectInstallSearch(String search);

	
	// 예금
	public ArrayList<DepositListVO> selectDepositList();
	public DepositListVO selectDepositDetail(int oIndex);
	public ArrayList<DepositListVO> selectDepositFilter(HashMap<String,Object> map);
	public ArrayList<DepositListVO> selectDepositSearch(String search);
	
	// 연금
	public ArrayList<PensionListVO> selectPensionList();
	public PensionListVO selectPensionDetail(int oIndex);
	public ArrayList<PensionListVO> selectPensionFilter(HashMap<String,Object> map); 
	public ArrayList<PensionListVO> selectPensionSearch(String search);
	
}
