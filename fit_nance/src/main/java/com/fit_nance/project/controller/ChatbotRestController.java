package com.fit_nance.project.controller;

import java.io.IOException;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fit_nance.project.service.ChatbotService;


@RestController
public class ChatbotRestController {
	
	// 챗봇
	@RequestMapping("/chatbot")
	public String chatbot(@RequestParam("chatInput") String chat) throws IOException {
		
		String chatAnswer = ChatbotService.main(chat);
		
		return chatAnswer;
	}
}
