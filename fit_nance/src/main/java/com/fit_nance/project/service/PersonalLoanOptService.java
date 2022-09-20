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
import com.fit_nance.project.model.PersonalLoanOptVO;

@Service
public class PersonalLoanOptService {
	public ArrayList<PersonalLoanOptVO> personalloanOpt() throws Exception{
		ArrayList<PersonalLoanOptVO> personalloanList = new ArrayList<PersonalLoanOptVO>();
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
		personalloanList = jsonToVOList(result.toString());
		return personalloanList;
	}
	
	private ArrayList<PersonalLoanOptVO> jsonToVOList(String jsonResultStr) {
		ArrayList<PersonalLoanOptVO> apiList = new ArrayList<PersonalLoanOptVO>();
		
		JSONObject jsonObj = new JSONObject(jsonResultStr);
		JSONObject resultObj = (JSONObject) jsonObj.get("result");
		
		//JSONArray baseList = (JSONArray) resultObj.get("baseList");
		JSONArray option = (JSONArray) resultObj.get("optionList");
		
		for(int i=0; i<option.length(); i++) {
			PersonalLoanOptVO vo = new PersonalLoanOptVO();
			JSONObject tempObj = (JSONObject) option.get(i);
			
			vo.setKind(6);
			vo.setoIndex(i);
			vo.setFin_co_no((String) tempObj.get("fin_co_no"));
			vo.setFin_prdt_cd((String) tempObj.get("fin_prdt_cd"));
			vo.setCrdt_prdt_type((String) tempObj.get("crdt_prdt_type"));
			vo.setCrdt_lend_rate_type((String) tempObj.get("crdt_lend_rate_type"));
			vo.setCrdt_lend_rate_type_nm((String) tempObj.get("crdt_lend_rate_type_nm"));
			vo.setCrdt_grad_1(Double.parseDouble(String.valueOf(tempObj.optString("crdt_grad_1","0.0"))));
			vo.setCrdt_grad_4(Double.parseDouble(String.valueOf(tempObj.optString("crdt_grad_4","0.0"))));
			vo.setCrdt_grad_5(Double.parseDouble(String.valueOf(tempObj.optString("crdt_grad_5","0.0"))));
			vo.setCrdt_grad_6(Double.parseDouble(String.valueOf(tempObj.optString("crdt_grad_6","0.0"))));
			vo.setCrdt_grad_10(Double.parseDouble(String.valueOf(tempObj.optString("crdt_grad_10","0.0"))));
			vo.setCrdt_grad_11(Double.parseDouble(String.valueOf(tempObj.optString("crdt_grad_11","0.0"))));
			vo.setCrdt_grad_12(Double.parseDouble(String.valueOf(tempObj.optString("crdt_grad_12","0.0"))));
			vo.setCrdt_grad_13(Double.parseDouble(String.valueOf(tempObj.optString("crdt_grad_13","0.0"))));
			vo.setCrdt_grad_avg(Double.parseDouble(String.valueOf(tempObj.optString("crdt_grad_avg","0.0"))));
			
			apiList.add(vo);
		}
		
		return apiList;
	}
}
