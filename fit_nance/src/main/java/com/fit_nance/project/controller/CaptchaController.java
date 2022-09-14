package com.fit_nance.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.service.APIExamCaptchaImage;
import com.fit_nance.project.service.APIExamCaptchaNkeyResult;
import com.fit_nance.project.service.CaptchaService;

@Controller
public class CaptchaController {

	@Autowired
	@Qualifier("captchaService")
	CaptchaService captcha;
	
	@Autowired
	APIExamCaptchaImage APIImage;
	
	@Autowired
	APIExamCaptchaNkeyResult apiResult;
	
	@RequestMapping("/captcha")
	public void captcha() {
		String captcha_key = captcha.keyIssued();
		APIImage.captchaImage(captcha_key);

	}
	
	@RequestMapping("/captcha2")
	public String captcha2() {
		apiResult.wtff();
		System.out.println();

		return "member/captcha";
	}
}
