package com.fit_nance.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CCController {
	
	@RequestMapping("/notice")
	public String viewNotice() {
		return "cc/cc_notice";
	}
}
