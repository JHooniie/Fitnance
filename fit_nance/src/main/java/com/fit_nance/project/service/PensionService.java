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
import com.fit_nance.project.model.DepositVO;
import com.fit_nance.project.model.PensionVO;
import com.fit_nance.project.model.PsOptionVO;

@Service
public class PensionService {
	StringBuffer resultDep = new StringBuffer();
	public ArrayList<PensionVO> pension() {
		
		ArrayList<PensionVO> depoList = new ArrayList<PensionVO>();
		
		APIKey apiKey = new APIKey();
		String key = apiKey.getSavingKey();
		
		try {
		for(int i =1;i<=3;i++) {
		String urlDep="http://finlife.fss.or.kr/finlifeapi/annuitySavingProductsSearch.json?auth="
				+key
				+"&topFinGrpNo="+"060000"
				+"&pageNo="+i;
		
		 URL url = new URL(urlDep);
         HttpURLConnection urlConnection = (HttpURLConnection)url.openConnection();
         urlConnection.setRequestMethod("GET");

         BufferedReader bf = new BufferedReader(new InputStreamReader(urlConnection.getInputStream(), "UTF-8"));

         String returnLine;
         while((returnLine = bf.readLine()) != null) {
             resultDep.append(returnLine);
         }
         depoList.addAll(jsonToVOList(resultDep.toString(),depoList.size()));
		}
         //System.out.println(depoList.get(1).getPIndex());
         //System.out.println(depoList.get(1).getEtc_note());
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return depoList;
	}
	public ArrayList<PensionVO> jsonToVOList(String jsonResultStr,int num){
		ArrayList<PensionVO> depoList = new ArrayList<PensionVO>();
		
		JSONObject jsonObj =new JSONObject(jsonResultStr);
		JSONObject parse_result = (JSONObject) jsonObj.get("result");
		JSONArray baseArray = (JSONArray) parse_result.get("baseList");
		
		if(baseArray!=null) {
			
			for (int i = num; num+i < baseArray.length(); i++) {
				JSONObject depoObj = baseArray.getJSONObject(i-num);
				
				PensionVO vo = new PensionVO();
        
				vo.setPIndex(i);
				vo.setFin_co_no(String.valueOf(depoObj.get("fin_co_no")));
				vo.setFin_prdt_cd(String.valueOf(depoObj.get("fin_prdt_cd")));
				vo.setKor_co_nm(String.valueOf(depoObj.get("kor_co_nm")));
				vo.setFin_prdt_nm(String.valueOf(depoObj.get("fin_prdt_nm")));
				vo.setJoin_way(String.valueOf(depoObj.get("join_way")));
				vo.setPnsn_kind(String.valueOf(depoObj.get("pnsn_kind")));
				vo.setPnsn_kind_nm(String.valueOf(depoObj.get("pnsn_kind_nm")));
				vo.setSale_strt_day(String.valueOf(depoObj.get("sale_strt_day")));
				vo.setMntn_cnt(Double.parseDouble(String.valueOf(depoObj.optString("mntn_cnt","0.0"))));
				vo.setPrdt_type(String.valueOf(depoObj.get("prdt_type")));
				vo.setPrdt_type_nm(String.valueOf(depoObj.get("prdt_type_nm")));
				vo.setAvg_prft_rate(Double.parseDouble(String.valueOf(depoObj.optString("avg_prft_rate","0.0"))));
				vo.setDcls_rate(String.valueOf(depoObj.get("dcls_rate")));
				vo.setGuar_rate(String.valueOf(depoObj.get("guar_rate")));
				vo.setBtrm_prft_rate_1(Double.parseDouble(String.valueOf(depoObj.optString("btrm_prft_rate_1","0.0"))));
				vo.setBtrm_prft_rate_2(Double.parseDouble(String.valueOf(depoObj.optString("btrm_prft_rate_2","0.0"))));
				vo.setBtrm_prft_rate_3(Double.parseDouble(String.valueOf(depoObj.optString("btrm_prft_rate_3","0.0"))));
				vo.setEtc(String.valueOf(depoObj.get("etc")));
				vo.setSale_co(String.valueOf(depoObj.get("sale_co")));
				
				
				//System.out.println(vo.getEtc_note());
				depoList.add(vo);
			}
		}
		
		
		return depoList;
	}
}
