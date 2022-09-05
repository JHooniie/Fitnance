package com.fit_nance.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.fit_nance.project.model.InstallListVO;

public interface IListDAO {
	// 적금
	// 전체 리스트 출력
	public ArrayList<InstallListVO> selectInstallList();
	// 상품 디테일
	public InstallListVO selectInstallDetail(int oIndex);
	// 필터
	public ArrayList<InstallListVO> selectInstallFilter(HashMap<String,Object> map); 

}
