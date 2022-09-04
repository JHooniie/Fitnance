package com.fit_nance.project.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.fit_nance.project.model.InstallVO;

@Service
public class InstallmentService {
	StringBuffer resultDep = new StringBuffer();
	public ArrayList<InstallVO> install() {
		
		ArrayList<InstallVO> installList = new ArrayList<InstallVO>();
		String key= "bedd120336310b8a230653bd987c0c31";
		
		
		String urlDep="http://finlife.fss.or.kr/finlifeapi/savingProductsSearch.json?auth="
				+key
				+"&topFinGrpNo="+"020000"
				+"&pageNo="+"1";
		try {
		 URL url = new URL(urlDep);
         HttpURLConnection urlConnection = (HttpURLConnection)url.openConnection();
         urlConnection.setRequestMethod("GET");

         BufferedReader bf = new BufferedReader(new InputStreamReader(urlConnection.getInputStream(), "UTF-8"));

         String returnLine;
         while((returnLine = bf.readLine()) != null) {
             resultDep.append(returnLine);
         }
         //System.out.println(resultDep.toString());
         installList = jsonToVOList(resultDep.toString());
         //System.out.println(installList.get(1).getPIndex());
         //System.out.println(installList.get(1).getEtc_note());*/
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return installList;
	}
	public ArrayList<InstallVO> jsonToVOList(String jsonResultStr){
		ArrayList<InstallVO> installList = new ArrayList<InstallVO>();
		
		JSONObject jsonObj =new JSONObject(jsonResultStr);
		JSONObject parse_result = (JSONObject) jsonObj.get("result");
		JSONArray baseArray = (JSONArray) parse_result.get("baseList");
		
		if(baseArray!=null) {
			
			for (int i = 0; i < baseArray.length(); i++) {
				JSONObject depoObj = baseArray.getJSONObject(i);
				
				InstallVO vo = new InstallVO();
				vo.setPIndex(i);
				vo.setFin_co_no(String.valueOf(depoObj.get("fin_co_no")));
				vo.setFin_prdt_cd(String.valueOf(depoObj.get("fin_prdt_cd")));
				vo.setKor_co_nm(String.valueOf(depoObj.get("kor_co_nm")));
				vo.setFin_prdt_nm(String.valueOf(depoObj.get("fin_prdt_nm")));
				vo.setJoin_way(String.valueOf(depoObj.get("join_way")));
				vo.setMtrt_int(String.valueOf(depoObj.get("mtrt_int")));
				vo.setSpcl_cnd(String.valueOf(depoObj.get("spcl_cnd")));
				vo.setJoin_deny(Integer.parseInt(String.valueOf(depoObj.optString("join_deny","0"))));
				vo.setJoin_member(String.valueOf(depoObj.get("join_member")));
				vo.setEtc_note(String.valueOf(depoObj.get("etc_note")));
				vo.setMax_limit(Integer.parseInt(String.valueOf(depoObj.optString("max_limit","0"))));
				
				
				//System.out.println(vo.getEtc_note());
				installList.add(vo);
			}
		}
		
		
		return installList;
	}
}
