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

import javax.imageio.ImageIO;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class APIExamCaptchaImage {
	public void captchaImage(String captcha_key) {
        String clientId = "c6yjfpdy44";//애플리케이션 클라이언트 아이디값";
        try {
            String key = captcha_key; // https://naveropenapi.apigw.ntruss.com/captcha/v1/nkey 호출로 받은 키값
            String apiURL = "https://naveropenapi.apigw.ntruss.com/captcha-bin/v1/ncaptcha?key=" + key + "&X-NCP-APIGW-API-KEY-ID" + clientId;
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                InputStream is = con.getInputStream();
                int read = 0;
                byte[] bytes = new byte[1024];
                // 랜덤한 이름으로 파일 생성
                String tempname = Long.valueOf(new Date().getTime()).toString();
                File f = new File("c:/springWorkspace/captcha/"+tempname + ".jpg");
                f.createNewFile();
                System.out.println(f);
                OutputStream outputStream = new FileOutputStream(f);
                while ((read =is.read(bytes)) != -1) {
                    outputStream.write(bytes, 0, read);
                }
                is.close();
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
    }
}
