package com.fit_nance.project.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@ComponentScan(basePackages = {"com.fit_nance.project"})
@MapperScan(basePackages = {"com.fit_nance.project"})
@PropertySources({@PropertySource(value="file:c:/springWorkspace/configure.properties",ignoreResourceNotFound=true),
	@PropertySource(value="file:/usr/local/project/properties/configure.properties",ignoreResourceNotFound=true),
	@PropertySource(value="file:/usr/local/project/properties/application-oauth.properties",ignoreResourceNotFound=true)})
public class WebConfig implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("images/**")
				.addResourceLocations("file:///usr/local/project/fitnance_images/");
	}

}
