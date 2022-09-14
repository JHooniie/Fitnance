package com.fit_nance.project.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fit_nance.project.service.PapagoService;

@RestController
public class PapagoController {
	
	@Autowired
	PapagoService papagoService;
	
	@RequestMapping("/papago")
	public String viewPapago(@RequestParam("pathInput") String path) throws IOException {
		String result = papagoService.translate(path);
		return result;
	}

}
