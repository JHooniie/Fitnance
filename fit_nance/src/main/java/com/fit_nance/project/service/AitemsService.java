package com.fit_nance.project.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.fit_nance.project.model.APIKey;

@Service
public class AitemsService {
	public static ArrayList<Integer> aitemsService(String serviceId, String type, String targetId) throws Exception{
		ArrayList<Integer> itemList = new ArrayList<Integer>();
		
			BufferedReader br = null;
			APIKey key = new APIKey();
		
			String accessKey = key.getAitemsAKey();
			String secretKey = key.getAitemsSKey();
			
			String timestamp = String.valueOf(new Date().getTime());
			String encodeBase64String = makeSignature(accessKey, secretKey, timestamp, serviceId, type, targetId);

			String apiURL = "https://aitems.apigw.ntruss.com"
					+ "/api/v1/services/"+serviceId
					+ "/infers/lookup?type="+type
					+ "&targetId="+targetId;
		
			URL url = new URL(apiURL);
			HttpURLConnection urlconnection = (HttpURLConnection) url.openConnection();
			urlconnection.setRequestMethod("GET");
			urlconnection.setRequestProperty("Content-type", "application/json");
			urlconnection.setRequestProperty("x-ncp-iam-access-key", accessKey);
			urlconnection.setRequestProperty("x-ncp-apigw-signature-v2", encodeBase64String);
			urlconnection.setRequestProperty("x-ncp-apigw-timestamp", timestamp);
	        System.out.println("Response code: " + urlconnection.getResponseCode());

			br = new BufferedReader(new InputStreamReader(urlconnection.getInputStream()));
			
			String result = "";
			String line;
			while((line = br.readLine()) != null) {
				result = result + line + "\n";
			}
			itemList = jsonToList(result.toString());
			System.out.println(itemList);
			return itemList;
		}
		
	public static String makeSignature(String accessKey, String secretKey, String timestamp, String serviceId, String type, String targetId) {
		
		String space = " ";					// one space
		String newLine = "\n";					// new line
		String method = "GET";					// method
		String url = "/api/v1/services/"+serviceId
					+ "/infers/lookup?type="+type+"&targetId="+targetId;	// url (include query string)
		
		String encodeBase64String = ""; 
		String message = new StringBuilder()
			.append(method)
			.append(space)
			.append(url)
			.append(newLine)
			.append(timestamp)
			.append(newLine)
			.append(accessKey)
			.toString();
		try {
			SecretKeySpec signingKey = new SecretKeySpec(secretKey.getBytes("UTF-8"), "HmacSHA256");
			Mac mac = Mac.getInstance("HmacSHA256");
			mac.init(signingKey);

			byte[] rawHmac = mac.doFinal(message.getBytes("UTF-8"));
			encodeBase64String = Base64.getEncoder().encodeToString(rawHmac);
			
			return encodeBase64String;
		} catch (Exception e) {
			System.out.println(e);
			  
			return encodeBase64String;
		}
		
		
	}
	
	public static ArrayList<Integer> jsonToList(String jsonResultStr) {
    	ArrayList<Integer> result = new ArrayList<Integer>();
		
		JSONObject jsonObj = new JSONObject(jsonResultStr);
		int index = jsonObj.getJSONArray("values").length();
		for(int i=0; i<index; i+=5) { 
			String str = jsonObj.getJSONArray("values").getString(i);
			int oIndex = Integer.parseInt(str);
			result.add(oIndex);
		}
		
		return result;
    }

}
