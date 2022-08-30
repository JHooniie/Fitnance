package com.fit_nance.project.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.fit_nance.project.model.DepoOptionVO;

@Service
public class DepoOptionService {
	StringBuffer resultDep = new StringBuffer();
	public ArrayList<DepoOptionVO> deposit() {
		ArrayList<DepoOptionVO> depoOptionList = new ArrayList<DepoOptionVO>();
		String key= "bedd120336310b8a230653bd987c0c31";
		
		
		String urlDep="http://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json?auth="
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
        
         depoOptionList = jsonToVOList(resultDep.toString());
         //System.out.println(depoOptionList.get(1).getoIndex());
         //System.out.println(depoOptionList.get(1).getIntr_rate_type_nm());
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return depoOptionList;
	}

	public ArrayList<DepoOptionVO> jsonToVOList(String jsonResultStr){
		ArrayList<DepoOptionVO> depoOptionList = new ArrayList<DepoOptionVO>();
		
		JSONObject jsonObj =new JSONObject(jsonResultStr);
		JSONObject parse_result = (JSONObject) jsonObj.get("result");
		JSONArray optionArray = (JSONArray) parse_result.get("optionList");
		
		if(optionArray!=null) {
			for (int i = 0; i < optionArray.length(); i++) {
				JSONObject depoObj = optionArray.getJSONObject(i);
				DepoOptionVO vo = new DepoOptionVO();
				vo.setoIndex(i);
				vo.setFin_co_no(String.valueOf(depoObj.get("fin_co_no")));
				vo.setFin_prdt_cd(String.valueOf(depoObj.get("fin_prdt_cd")));
				vo.setIntr_rate_type(String.valueOf(depoObj.get("intr_rate_type")));
				vo.setIntr_rate_type_nm(String.valueOf(depoObj.get("intr_rate_type_nm")));
				vo.setSave_trm(Integer.parseInt(String.valueOf(depoObj.optString("save_trm","0"))));
				vo.setIntr_rate(Double.parseDouble(String.valueOf(depoObj.optString("intr_rate","0.0"))));
				vo.setIntr_rate2(Double.parseDouble(String.valueOf(depoObj.optString("intr_rate2","0.0"))));
		
				//System.out.println(vo.getEtc_note());
				depoOptionList.add(vo);
			}
		}
		
		
		return depoOptionList;
	}
}
