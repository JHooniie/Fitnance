package com.fit_nance.project.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fit_nance.project.service.EmailSenderService;

@Controller
@EnableAsync
public class MailController {

	@Autowired
	EmailSenderService emailService;
	
	@RequestMapping("/sendMail")
	public void sendSimpleMail(HttpServletRequest rq, HttpServletResponse rs, Model model) throws Exception{
		rq.setCharacterEncoding("utf-8");
		rs.setContentType("text/html;charset=utf-8");
		PrintWriter out = rs.getWriter();
		String message = emailService.htmlReader();
		System.out.println(message);
		emailService.sendEmail("테스트 이메일 기입!", "테스트 메일", message);
		emailService.sendPreMail("fitnance_mailsender@naver.com", "테스트 메일", "발신 확인용");
		System.out.println("메일을 보냈습니다!");
	}
	
	@ResponseBody
	@RequestMapping("/api/sendEmail")
	public String sendEmail(@RequestParam("memId") String memId, HttpServletRequest rq, HttpServletResponse rs, Model model) throws Exception{
		rq.setCharacterEncoding("utf-8");
		rs.setContentType("text/html;charset=utf-8");
		//PrintWriter out = rs.getWriter();
		String message = emailService.htmlReader();

		String certified = emailService.getCertified();
		

		emailService.sendEmail(memId, "fit:nanace 회원가입 인증확인", message);
		emailService.sendPreMail("fitnance_mailsender@naver.com", "테스트 메일", "발신 확인용");
		System.out.println("컨트롤러===========================================================================================");
		System.out.println(certified);
		System.out.println("===========================================================================================");
		System.out.println("메일을 보냈습니다!");
		
		return certified;
	}
	
	
	
	
}
	
	
