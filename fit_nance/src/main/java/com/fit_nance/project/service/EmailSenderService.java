package com.fit_nance.project.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class EmailSenderService {

	@Autowired
	private JavaMailSender mailSender;
	
	
	@Async
	public void sendEmail(String toEmail,
						String subject,
						String body) {
		String mail_templage;
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			
			mail_templage = "/html/test.html";
			
			//messageHelper.setCc("fitnance_emailsender@naver.com");//참조
			messageHelper.setFrom("fitnance_emailsender@naver.com");
			messageHelper.setSubject(subject);
			messageHelper.setTo(toEmail);
			messageHelper.setText(body, true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}
		
		
		@Async
		public void sendPreMail(String toEmail,
				String body,
				String subject) {
		
		
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom("fitnance_emailsender@naver.com");
		message.setTo(toEmail);
		message.setText(body);
		message.setSubject(subject);
		
		mailSender.send(message);
		System.out.println("Mail send...");
			
		}
	
	
		public String htmlReader() {
			
			BufferedReader buff = null;
			URL url = null;
			URLConnection con = null;
			InputStreamReader reader = null;
			String pageContents = null;
			
			try {
				
				
				url = new URL("/html/email.html");
				con = (URLConnection)url.openConnection();
				reader = new InputStreamReader(con.getInputStream(), "utf-8");
				
				buff = new BufferedReader(reader);
				
				while((pageContents = buff.readLine()) != null) {
						System.out.println(pageContents);		
				}
				buff.close();
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return pageContents;
			
		}
		
		
}
