package com.fit_nance.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.fit_nance.project"})
@MapperScan(basePackages = {"com.fit_nance.project"})
public class FitNanceApplication {

	public static void main(String[] args) {
		SpringApplication.run(FitNanceApplication.class, args);
	}

}
