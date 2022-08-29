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
import com.fit_nance.project.model.PsOptionVO;

@Service
public class PsOptionService {
	StringBuffer resultDep = new StringBuffer();
	public ArrayList<PsOptionVO> deposit() {
		ArrayList<PsOptionVO> depoOptionList = new ArrayList<PsOptionVO>();
		String key= "bedd120336310b8a230653bd987c0c31";
		
		
		String urlDep="http://finlife.fss.or.kr/finlifeapi/annuitySavingProductsSearch.json?auth="
				+key
				+"&topFinGrpNo="+"060000"
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

	public ArrayList<PsOptionVO> jsonToVOList(String jsonResultStr){
		ArrayList<PsOptionVO> depoOptionList = new ArrayList<PsOptionVO>();
		
		JSONObject jsonObj =new JSONObject(jsonResultStr);
		JSONObject parse_result = (JSONObject) jsonObj.get("result");
		JSONArray optionArray = (JSONArray) parse_result.get("optionList");
		
		if(optionArray!=null) {
			for (int i = 0; i < optionArray.length(); i++) {
				JSONObject depoObj = optionArray.getJSONObject(i);
				PsOptionVO vo = new PsOptionVO();
				vo.setoIndex(i);
				vo.setFin_co_no(String.valueOf(depoObj.get("fin_co_no")));
				vo.setFin_prdt_cd(String.valueOf(depoObj.get("fin_prdt_cd")));
				vo.setPnsn_recp_trm(String.valueOf(depoObj.get("pnsn_recp_trm")));
				vo.setPnsn_recp_trm_nm(String.valueOf(depoObj.get("pnsn_recp_trm_nm")));
				vo.setPnsn_entr_age(String.valueOf(depoObj.get("pnsn_entr_age")));
				vo.setPnsn_entr_age_nm(String.valueOf(depoObj.get("pnsn_entr_age_nm")));
				vo.setMon_paym_atm(String.valueOf(depoObj.get("mon_paym_atm")));
				vo.setMon_paym_atm_nm(String.valueOf(depoObj.get("mon_paym_atm_nm")));
				vo.setPaym_prd(String.valueOf(depoObj.get("paym_prd")));
				vo.setPaym_prd_nm(String.valueOf(depoObj.get("paym_prd_nm")));
				vo.setPnsn_strt_age(String.valueOf(depoObj.get("pnsn_strt_age")));
				vo.setPnsn_strt_age_nm(String.valueOf(depoObj.get("pnsn_strt_age_nm")));
				vo.setPnsn_recp_amt(Double.parseDouble(String.valueOf(depoObj.optString("pnsn_recp_amt","0.0"))));
		
				//System.out.println(vo.getEtc_note());
				depoOptionList.add(vo);
			}
		}
		
		
		return depoOptionList;
	}
}
