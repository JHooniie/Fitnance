package com.fit_nance.project.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.fit_nance.project.model.APIKey;
import com.fit_nance.project.model.InstallOptionVO;

@Service
public class InsOptionService {
	StringBuffer resultDep = new StringBuffer();
	public ArrayList<InstallOptionVO> install() {
		ArrayList<InstallOptionVO> insOptionList = new ArrayList<InstallOptionVO>();
		
		APIKey apiKey = new APIKey();
		String key = apiKey.getSavingKey();
		
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
        
         insOptionList = jsonToVOList(resultDep.toString());
         //System.out.println(insOptionList.get(1).getoIndex());
         //System.out.println(insOptionList.get(1).getIntr_rate_type_nm());
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return insOptionList;
	}

	public ArrayList<InstallOptionVO> jsonToVOList(String jsonResultStr){
		ArrayList<InstallOptionVO> insOptionList = new ArrayList<InstallOptionVO>();
		
		JSONObject jsonObj =new JSONObject(jsonResultStr);
		JSONObject parse_result = (JSONObject) jsonObj.get("result");
		JSONArray optionArray = (JSONArray) parse_result.get("optionList");
		
		if(optionArray!=null) {
			for (int i = 0; i < optionArray.length(); i++) {
				JSONObject depoObj = optionArray.getJSONObject(i);
				InstallOptionVO vo = new InstallOptionVO();
				vo.setoIndex(i);
				vo.setFin_co_no(String.valueOf(depoObj.get("fin_co_no")));
				vo.setFin_prdt_cd(String.valueOf(depoObj.get("fin_prdt_cd")));
				vo.setRsrv_type(String.valueOf(depoObj.get("rsrv_type")));
				vo.setRsrv_type_nm(String.valueOf(depoObj.get("rsrv_type_nm")));
				vo.setIntr_rate_type(String.valueOf(depoObj.get("intr_rate_type")));
				vo.setIntr_rate_type_nm(String.valueOf(depoObj.get("intr_rate_type_nm")));
				vo.setSave_trm(Integer.parseInt(String.valueOf(depoObj.optString("save_trm","0"))));
				vo.setIntr_rate(Double.parseDouble(String.valueOf(depoObj.optString("intr_rate","0.0"))));
				vo.setIntr_rate2(Double.parseDouble(String.valueOf(depoObj.optString("intr_rate2","0.0"))));
		
				//System.out.println(vo.getEtc_note());
				insOptionList.add(vo);
			}
		}
		
		
		return insOptionList;
	}
}
