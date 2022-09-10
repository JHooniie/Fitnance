package com.fit_nance.project.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Service;

@Service
public class PapagoService {

	
	public void translate() throws IOException {
//		String result = "";
		
		String clientId = "ggb1itises";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "umb3gaHGLV98MNDV1Zq653Iq8S3g9E1twqjPKbdG";//애플리케이션 클라이언트 시크릿값";
        
		String apiURL = "https://naveropenapi.apigw.ntruss.com/web-trans/v1/translate";
        URL url = new URL(apiURL);
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("POST");

		httpConn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		httpConn.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
		httpConn.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
		// post request
        String postParams = "source=ko&target=en&html=" + parser();
		httpConn.setDoOutput(true);
		OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
		writer.write(postParams);
		writer.flush();
		writer.close();
		httpConn.getOutputStream().close();

		int responseCode = httpConn.getResponseCode();
        BufferedReader br;
        if(responseCode==200) { // 정상 호출
            br = new BufferedReader(new InputStreamReader(httpConn.getInputStream()));
        } else {  // 오류 발생
            br = new BufferedReader(new InputStreamReader(httpConn.getErrorStream()));
        }
        String inputLine;
        StringBuffer response = new StringBuffer();
        while ((inputLine = br.readLine()) != null) {
            response.append(inputLine);
        }
        br.close();
        System.out.println(response.toString());
        
//        result = response.toString();
        
	}
	
	public Document parser() throws IOException {
		
		Document doc = Jsoup.connect("http://localhost:8080/").get();
		
		return doc;
	}
}
