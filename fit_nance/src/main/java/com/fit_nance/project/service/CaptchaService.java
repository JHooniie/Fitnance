package com.fit_nance.project.service;

import java.io.BufferedReader;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;


import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.fit_nance.project.model.APIKey;

@Service
public class CaptchaService {
	
	//캡챠 이미지 키
		private String captcha_key = getCaptcha_key();
		private String captcha_key_img = captchaImage(captcha_key);
		public String getCaptcha_key() {
			return captcha_key;
		}

		public String getCaptcha_key_img() {
			return captcha_key_img;
		}
	

		
    public String keyIssued() {
    	APIKey key = new APIKey();
    	
        String clientId = key.getCaptchaId();// 애플리케이션 클라이언트 아이디값"
        String clientSecret = key.getCaptchKey();// 애플리케이션 클라이언트 시크릿값"
        try {
            String code = "0"; // 키 발급시 0, 캡차 이미지 비교시 1로 세팅
            String apiURL = "https://naveropenapi.apigw.ntruss.com/captcha/v1/nkey?code=" + code;
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", clientId);
            con.setRequestProperty("X-NCP-APIGW-API-KEY", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if (responseCode == 200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else { // 오류 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;

            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();

            System.out.println(response.toString());
            String jsonString = response.toString();
            
            JSONObject jObject = new JSONObject(jsonString);
            
            String captcha_key_img = jObject.getString("key");
            System.out.println(captcha_key_img);
            return captcha_key_img;
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return null;
    }
    
    public String captchaImage(String captcha_key) {
    	APIKey key = new APIKey();
    	String clientId = key.getCaptchaId();//애플리케이션 클라이언트 아이디값";
       
        try {
        	 System.out.println(captcha_key);
            String keys = captcha_key; // https://naveropenapi.apigw.ntruss.com/captcha/v1/nkey 호출로 받은 키값
            String apiURL = "https://naveropenapi.apigw.ntruss.com/captcha-bin/v1/ncaptcha?key=" + keys + "&X-NCP-APIGW-API-KEY-ID" + clientId;
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
            	String path = "/usr/local/project/fitnance_images/captcha";
        		File deleteFolder = new File(path);
//        		System.out.println(path);
//        		if(deleteFolder.exists()){
//        			File[] deleteFolderList = deleteFolder.listFiles();
//        			
//        			for (int j = 0; j < deleteFolderList.length; j++) {
//        				deleteFolderList[j].delete(); 
//        			}
//        		}
                InputStream is = con.getInputStream();
                int read = 0;
                byte[] bytes = new byte[1024];
                // 랜덤한 이름으로 파일 생성
                String tempname = Long.valueOf(new Date().getTime()).toString();
                File f = new File("/usr/local/project/fitnance_images/captcha/"+tempname + ".jpg");
                f.createNewFile();
                System.out.println(f);
                
                OutputStream outputStream = new FileOutputStream(f);
//                ByteArrayOutputStream bos = new ByteArrayOutputStream();
                
                while ((read =is.read(bytes)) != -1) {
                	
                	outputStream.write(bytes, 0, read);
                }
                is.close();
                return tempname + ".jpg";
//                byte[] data = bos.toByteArray();
//                ByteArrayInputStream bis = new ByteArrayInputStream(data);
//                BufferedImage bImage2 = ImageIO.read(bis);
//                ImageIO.write(bImage2, "PNG",  new File("output.PNG"));
                
            } else {  // 오류 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
                String inputLine;
                StringBuffer response = new StringBuffer();
                while ((inputLine = br.readLine()) != null) {
                    response.append(inputLine);
                }
                br.close();

                System.out.println(response.toString());

                
            }
        } catch (Exception e) {
            System.out.println(e);
        }
		System.out.println("=============");
		return null;
    }
    
    public Boolean captchaResult(String captcha_value) {
    	APIKey key = new APIKey();
    	
        String clientId = key.getCaptchaId();// 애플리케이션 클라이언트 아이디값"
        String clientSecret = key.getCaptchKey();// 애플리케이션 클라이언트 시크릿값"
        try {
        	 System.out.println(captcha_key);
            String code = "1"; // 키 발급시 0,  캡차 이미지 비교시 1로 세팅
            String keys = captcha_key; // 캡차 키 발급시 받은 키값
            String value = captcha_value; // 사용자가 입력한 캡차 이미지 글자값
            String apiURL = "https://naveropenapi.apigw.ntruss.com/captcha/v1/nkey?code=" + code +"&key="+ keys + "&value="+ value;

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

            String jsonString = response.toString();
            
            JSONObject jObject = new JSONObject(jsonString);
            
            Boolean result = jObject.getBoolean("result");
            
            return result;

        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
}
