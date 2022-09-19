package com.fit_nance.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;


@SpringBootApplication
@ComponentScan(basePackages = {"com.fit_nance.project"})
@MapperScan(basePackages = {"com.fit_nance.project"})
/*@PropertySources({@PropertySource(value="file:c:/springWorkspace/configure.properties",ignoreResourceNotFound=true),
    @PropertySource(value="file:/usr/local/project/properties/configure.properties",ignoreResourceNotFound=true)})*/
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
