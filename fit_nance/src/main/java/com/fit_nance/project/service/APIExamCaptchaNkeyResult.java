package com.fit_nance.project.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class APIExamCaptchaNkeyResult {
	 public void wtff() {
	        String clientId = "c6yjfpdy44";//애플리케이션 클라이언트 아이디값";
	        String clientSecret = "WuwaT92ye6fIo0f59dDFAiBaake0wGKi0U0ap6DR";//애플리케이션 클라이언트 시크릿값";
	        try {
	            String code = "1"; // 키 발급시 0,  캡차 이미지 비교시 1로 세팅
	            String key = "Kn8OkS3y8rSCAf9W"; // 캡차 키 발급시 받은 키값
	            String value = "H58D"; // 사용자가 입력한 캡차 이미지 글자값
	            String apiURL = "https://naveropenapi.apigw.ntruss.com/captcha/v1/nkey?code=" + code +"&key="+ key + "&value="+ value;

	            URL url = new URL(apiURL);
	            HttpURLConnection con = (HttpURLConnection)url.openConnection();
	            con.setRequestMethod("GET");
	            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
	            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
	            int responseCode = con.getResponseCode();
	            BufferedReader br;
	            if(responseCode==200) { // 정상 호출
	                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	            } else {  // 오류 발생
	                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
	            }
	            String inputLine;
	            StringBuffer response = new StringBuffer();
	            while ((inputLine = br.readLine()) != null) {
	                response.append(inputLine);
	            }
	            br.close();
	            System.out.println(response.toString());
	            System.out.println("=====================");
	            String jsonString = response.toString();
	            
	            JSONObject jObject = new JSONObject(jsonString);
	            
	            boolean result = jObject.getBoolean("result");
	            String responseTime = jObject.getString("responseTime");
	            System.out.println(result);
	            System.out.println(responseTime);
	            

	        } catch (Exception e) {
	            System.out.println(e);
	        }

	    }
}
