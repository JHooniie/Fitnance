package com.fit_nance.project.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fit_nance.project.config.auth.PrincipalDetails;
import com.fit_nance.project.service.AitemsService;

@Controller
public class AitemsController {
	
	// 개인 상품 추천
	@RequestMapping("/aitems_personalItem")
	public void AItems_personalItem(Authentication auth) throws Exception {
		if(auth != null) {
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();// 세션 유저 아이디
			
			String targetId = memId;// 개인화 추천 - 유저 아이디
			String serviceId="hy1ndl4mr24";
			String type = "personalRecommend";
			
			System.out.println("type : " + type);
			System.out.println("targetId : " + targetId);
			AitemsService.aitemsService(serviceId, type, targetId);
		}
		
	}
	
	// 연관 상품 추천
	@RequestMapping("/aitems_relatedItem")
	public void AItems_relatedItem(Authentication auth, String oIndex) throws Exception {
		if(auth != null) {
			PrincipalDetails princ=(PrincipalDetails)auth.getPrincipal();
			String memId = princ.getUsername();// 세션 유저 아이디
			
			String targetId = oIndex;// 연관항목 추천 - 상품 인덱스
			String serviceId="hy1ndl4mr24";
			String type = "relatedItem";
			
			System.out.println("type : " + type);
			System.out.println("targetId : " + targetId);
			AitemsService.aitemsService(serviceId, type, targetId);
		}
		
	}
}
