package com.dreamup.email.controller;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dreamup.email.service.EmailSenderService;

@RestController
public class EmailAuthController {
	
	@Resource(name="emailSenderService")
	private EmailSenderService service;
	
	@RequestMapping("/authMailSender.do")
	public int authMailSender(String member_authMail) {
		//System.out.println("controller 메일 잘 받아오느냐: "+member_authMail);
		return service.emailSender(member_authMail);
	}
}
