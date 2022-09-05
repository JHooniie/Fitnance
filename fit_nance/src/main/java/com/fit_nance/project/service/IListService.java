package com.fit_nance.project.service;

import java.util.ArrayList;

import com.fit_nance.project.model.DepositFilterVO;
import com.fit_nance.project.model.DepositListVO;
import com.fit_nance.project.model.InstallListFilterVO;
import com.fit_nance.project.model.InstallListVO;

public interface IListService {
	// 적금
	// 전체 리스트 출력
	public ArrayList<InstallListVO> selectInstallList();
	// 상품 디테일
	public InstallListVO selectInstallDetail(int oIndex);
	// 필터
	public ArrayList<InstallListVO> selectInstallFilter(InstallListFilterVO vo);
	
	// 예금
	// 전체 리스트 출력
	public ArrayList<DepositListVO> selectDepositList();
	// 상품 디테일
	public DepositListVO selectDepositDetail(int oIndex);
	// 필터
	public ArrayList<DepositListVO> selectDepositFilter(DepositFilterVO vo); 
}
