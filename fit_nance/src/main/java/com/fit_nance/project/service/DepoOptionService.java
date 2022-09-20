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
import com.fit_nance.project.model.DepoOptionVO;

@Service
public class DepoOptionService {
	StringBuffer resultDep = new StringBuffer();
	public ArrayList<DepoOptionVO> deposit() {
		ArrayList<DepoOptionVO> depoOptionList = new ArrayList<DepoOptionVO>();
		
		APIKey apiKey = new APIKey();
		String key = apiKey.getSavingKey();
		
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
        
         depoOptionList.addAll(jsonToVOList(resultDep.toString(),0));
         //System.out.println(depoOptionList.get(1).getoIndex());
         //System.out.println(depoOptionList.get(1).getIntr_rate_type_nm());
         for(int i =1; i<=3;i++) {
             StringBuffer resultDep2 = new StringBuffer();
             String urlDep2="http://finlife.fss.or.kr/finlifeapi/depositProductsSearch.json?auth="
    					+key
    					+"&topFinGrpNo="+"030300"
    					+"&pageNo="+i;
    		  URL url2 = new URL(urlDep2);
    		 HttpURLConnection urlConnection2 = (HttpURLConnection)url2.openConnection();
             urlConnection2.setRequestMethod("GET");

             BufferedReader bf2 = new BufferedReader(new InputStreamReader(urlConnection2.getInputStream(), "UTF-8"));
             
             String returnLine2;
             while((returnLine2 = bf2.readLine()) != null) {
                 resultDep2.append(returnLine2);
             }
             depoOptionList.addAll(jsonToVOList(resultDep2.toString(),depoOptionList.size()));
            }
		
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return depoOptionList;
	}

	public ArrayList<DepoOptionVO> jsonToVOList(String jsonResultStr,int num){
		ArrayList<DepoOptionVO> depoOptionList = new ArrayList<DepoOptionVO>();
		
		JSONObject jsonObj =new JSONObject(jsonResultStr);
		JSONObject parse_result = (JSONObject) jsonObj.get("result");
		JSONArray optionArray = (JSONArray) parse_result.get("optionList");
		
		if(optionArray!=null) {
			for (int i = num; i < num+optionArray.length(); i++) {
				JSONObject depoObj = optionArray.getJSONObject(i-num);
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
