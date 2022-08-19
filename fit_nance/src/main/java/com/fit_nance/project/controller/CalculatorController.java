package com.fit_nance.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalculatorController {
	
	@RequestMapping("/cal_tax")
	public String viewNotice() {
		return "calculator/cal_tax";
	}
}
