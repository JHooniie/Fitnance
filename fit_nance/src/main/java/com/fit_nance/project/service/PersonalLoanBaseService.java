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
import com.fit_nance.project.model.PersonalLoanBaseVO;

@Service
public class PersonalLoanBaseService {
	public ArrayList<PersonalLoanBaseVO> personalloanBase() throws Exception{
		ArrayList<PersonalLoanBaseVO> personalLoanList = new ArrayList<PersonalLoanBaseVO>();
		BufferedReader br = null;
		
		APIKey apiKey = new APIKey();
		String key = apiKey.getLoanKey();
		
		StringBuilder urlBuilder = new StringBuilder("http://finlife.fss.or.kr/finlifeapi/creditLoanProductsSearch.json?"
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
		personalLoanList = jsonToVOList(result.toString());
		return personalLoanList;
	}
	
	private ArrayList<PersonalLoanBaseVO> jsonToVOList(String jsonResultStr) {
		ArrayList<PersonalLoanBaseVO> apiList = new ArrayList<PersonalLoanBaseVO>();
		
		JSONObject jsonObj = new JSONObject(jsonResultStr);
		JSONObject resultObj = (JSONObject) jsonObj.get("result");
		
		JSONArray baseList = (JSONArray) resultObj.get("baseList");
		//JSONArray option = (JSONArray) resultObj.get("option");
		
		for(int i=0; i<baseList.length(); i++) {
			PersonalLoanBaseVO vo = new PersonalLoanBaseVO();
			JSONObject tempObj = (JSONObject) baseList.get(i);
			
			vo.setpIndex(i);
			vo.setFin_co_no((String) tempObj.get("fin_co_no"));
			vo.setKor_co_nm((String) tempObj.get("kor_co_nm"));
			vo.setFin_prdt_cd((String) tempObj.get("fin_prdt_cd"));
			vo.setFin_prdt_nm((String) tempObj.get("fin_prdt_nm"));
			vo.setJoin_way((String) tempObj.get("join_way"));
			vo.setCrdt_prdt_type((String) tempObj.get("crdt_prdt_type"));
			vo.setCrdt_prdt_type_nm((String) tempObj.get("crdt_prdt_type_nm"));
			vo.setCb_name((String) tempObj.get("cb_name"));
			
			apiList.add(vo);
		}
		
		return apiList;
	}
}
