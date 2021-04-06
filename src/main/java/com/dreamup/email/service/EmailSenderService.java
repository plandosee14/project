package com.dreamup.email.service;

import java.util.Random;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailSenderService {
	@Inject
	private JavaMailSender mimeMailSender;
	
	
	
	public int emailSender(String member_authMail) {
		int authNum=0;
		
		try {
			MimeMessage message = mimeMailSender.createMimeMessage();
			message.setSubject("DreamUp 인증메일입니다.");
			authNum = createAuthNum();
			message.setText("DreamUp 인증번호 \n ["+authNum+"]", "UTF-8","html");
			message.setFrom("javajo2020@gmail.com");
			message.addRecipient(RecipientType.TO,new InternetAddress(member_authMail));
			this.mimeMailSender.send(message);
			
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return authNum;
	}
	
	public int createAuthNum() {
		Random random = new Random();
		return random.nextInt(1000000) + 100000;
	}
	
}
