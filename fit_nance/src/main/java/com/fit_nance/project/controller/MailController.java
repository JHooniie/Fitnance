package com.fit_nance.project.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.service.EmailSenderService;

@Controller
@EnableAsync
public class MailController {

	@Autowired
	EmailSenderService emailService;
	
	@RequestMapping("/sendMail")
	public void sendSimpleMail(HttpServletRequest rq, HttpServletResponse rs) throws Exception{
		rq.setCharacterEncoding("utf-8");
		rs.setContentType("text/html;charset=utf-8");
		PrintWriter out = rs.getWriter();
		String message = emailService.htmlReader();
		System.out.println(message);
		emailService.sendEmail("cliffear324@naver.com", "테스트 메일", message);
		emailService.sendPreMail("fitnance_emailsender@naver.com", "테스트 메일", "발신 확인용");
		System.out.println("메일을 보냈습니다!");
	}
		
	
	
	
	
}
	
	
