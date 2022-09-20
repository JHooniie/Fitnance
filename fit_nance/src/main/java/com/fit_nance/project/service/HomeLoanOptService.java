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
import com.fit_nance.project.model.HomeLoanOptVO;

@Service
public class HomeLoanOptService {
	public ArrayList<HomeLoanOptVO> homeloanOpt() throws Exception{
		ArrayList<HomeLoanOptVO> homeloanList = new ArrayList<HomeLoanOptVO>();
		BufferedReader br = null;
		
		APIKey apiKey = new APIKey();
		String key = apiKey.getLoanKey();
		
		StringBuilder urlBuilder = new StringBuilder("http://finlife.fss.or.kr/finlifeapi/mortgageLoanProductsSearch.json?"
													 + "auth=" + key
													 + "&topFinGrpNo=020000&pageNo=1");
		
		URL url = new URL(urlBuilder.toString());
		
		HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
		urlconnection.setRequestMethod("GET");
		urlconnection.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + urlconnection.getResponseCode());

		br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream()));
		
		String result = "";
		String line;
		while((line = br.readLine()) != null) {
			result = result + line + "\n";
		}
		System.out.println(result.toString());
		homeloanList = jsonToVOList(result.toString());
		return homeloanList;
	}
	
	private ArrayList<HomeLoanOptVO> jsonToVOList(String jsonResultStr) {
		ArrayList<HomeLoanOptVO> apiList = new ArrayList<HomeLoanOptVO>();
		
		JSONObject jsonObj = new JSONObject(jsonResultStr);
		JSONObject resultObj = (JSONObject) jsonObj.get("result");
		
		//JSONArray baseList = (JSONArray) resultObj.get("baseList");
		JSONArray option = (JSONArray) resultObj.get("optionList");
		
		for(int i=0; i<option.length(); i++) {
			HomeLoanOptVO vo = new HomeLoanOptVO();
			JSONObject tempObj = (JSONObject) option.get(i);
			vo.setKind(4);
			vo.setoIndex(i);
			vo.setFin_co_no((String) tempObj.get("fin_co_no"));
			vo.setFin_prdt_cd((String) tempObj.get("fin_prdt_cd"));
			vo.setMrtg_type((String) tempObj.get("mrtg_type"));
			vo.setMrtg_type_nm((String) tempObj.get("mrtg_type_nm"));
			vo.setRpay_type((String) tempObj.get("rpay_type"));
			vo.setRpay_type_nm((String) tempObj.get("rpay_type_nm"));
			vo.setLend_rate_type((String) tempObj.get("lend_rate_type"));
			vo.setLend_rate_type_nm((String) tempObj.get("lend_rate_type_nm"));
			vo.setLend_rate_min(Double.parseDouble(String.valueOf(tempObj.optString("lend_rate_min","0.0"))));
			vo.setLend_rate_max(Double.parseDouble(String.valueOf(tempObj.optString("lend_rate_max","0.0"))));
			vo.setLend_rate_avg(Double.parseDouble(String.valueOf(tempObj.optString("lend_rate_avg","0.0"))));
			
			apiList.add(vo);
		}
		
		return apiList;
	}
}
