package com.fit_nance.project.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.service.AitemsService;

@Controller
public class AitemsController {
	
	@RequestMapping("/aitems")
	public void aitems(Authentication auth/*, @RequestParam(value="type") String type*/) throws Exception {
		if(auth != null) {
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();
			String targetId = memId;
			String serviceId="1phjejpj0vk";
			String type = "personalRecommend";
			
			System.out.println("type : " + type);
			System.out.println("targetId : " + targetId);
			AitemsService.aitemsService(serviceId, type, targetId);
		}
		
	}
}
