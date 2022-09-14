package com.fit_nance.project.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fit_nance.project.service.PapagoService;

@Controller
public class PapagoController {
	
	@Autowired
	PapagoService papagoService;
	
	@RequestMapping("/papago")
	public void viewPapago() throws IOException {
		papagoService.translate();
	}
	
	@RequestMapping("/papago2")
	public void viewPapago2() throws IOException {
		papagoService.parser();
	}
}
