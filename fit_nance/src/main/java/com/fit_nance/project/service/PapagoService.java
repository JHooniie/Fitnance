package com.fit_nance.project.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.stereotype.Service;

import com.fit_nance.project.model.APIKey;

@Service
public class PapagoService {

	
	public String translate(String path) throws IOException {
//		String result = "";
		
		APIKey key = new APIKey();
		String clientId = key.getPapagoId();
        String clientSecret = key.getPapagoKey();
        
		String apiURL = "https://naveropenapi.apigw.ntruss.com/web-trans/v1/translate";
        URL url = new URL(apiURL);
		HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
		httpConn.setRequestMethod("POST");

		httpConn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		httpConn.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
		httpConn.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
		// post request
        String postParams = "source=ko&target=en&html=" + parser(path);
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
        //System.out.println(response.toString());
        
        return response.toString();
        
	}
	
	public Element parser(String path) throws IOException {
		
		Document doc = Jsoup.connect("http://localhost:8080" + path).get();
		Element body = doc.body();
		
		return body;
	}
}
