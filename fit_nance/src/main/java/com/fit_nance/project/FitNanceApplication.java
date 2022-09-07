package com.fit_nance.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.event.EventListener;


@SpringBootApplication
@ComponentScan(basePackages = {"com.fit_nance.project"})
@MapperScan(basePackages = {"com.fit_nance.project"})
public class FitNanceApplication {

//	@Autowired
//	private EmailSenderService service;
//	
	public static void main(String[] args) {
		SpringApplication.run(FitNanceApplication.class, args);
	}
	
//  이메일 점검용	
//	@EventListener(ApplicationReadyEvent.class)
//	public void triggerMail() {
//		service.sendEmail("fitnance_emailsender@naver.com",
//								"This is the Email Body...",
//								"This is the Email Subject" );
//	}

}
