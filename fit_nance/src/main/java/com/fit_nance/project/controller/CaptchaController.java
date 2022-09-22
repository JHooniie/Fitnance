package com.fit_nance.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fit_nance.project.service.CaptchaService;

@RestController
public class CaptchaController {

	@Autowired
	@Qualifier("captchaService")
	CaptchaService captcha;
	
	//캡챠 새로고침
	@RequestMapping("/api/rotate_captcha")
	public String rotate_captcha() {

		String captcha_key = captcha.keyIssued();
		captcha.setCaptcha_key(captcha_key);
		System.out.println("키발급 컨트롤러 : "+captcha_key);
		String captcha_img = captcha.captchaImage(captcha_key);

		return captcha_img;
	}

		//캡챠 인증
		@RequestMapping("/api/check_captcha")
		public Boolean check_captcha(@RequestParam("captcha_value") String captcha_value) {
			
			Boolean result = captcha.captchaResult(captcha_value);
			System.out.println(result);
			
			return result;
		}
	
}
