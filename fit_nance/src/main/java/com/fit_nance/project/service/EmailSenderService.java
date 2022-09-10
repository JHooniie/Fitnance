package com.fit_nance.project.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Path;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class EmailSenderService {

	@Autowired
	private JavaMailSender mailSender;
	
	
	@Autowired
	private ResourceLoader resourceLoader;

	
	
	
	
	@Async
	public void sendEmail(String toEmail,
						String subject,
						String body) {
		//String mail_template;
		MimeMessage message = mailSender.createMimeMessage();
		
		
		
		try {
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			
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
	
	
		public String htmlReader() throws Exception {
			
			String Keys = "abc123";
			
			String filePath = "classpath:static/html/email.html";
			InputStream inputStream = resourceLoader.getResource(filePath).getInputStream();
		    String template = "";
		    try {
		        BufferedReader in = new BufferedReader(new InputStreamReader(inputStream));
		        String str;
		        
		        while ((str = in.readLine()) != null) {
		        		template +=str;
		        }
		        in.close();
		        template = template.replace("인증번호", Keys);
		        System.out.println("template : " + template);
		    } catch (IOException e) {
		    }

			return template;
		}

}
