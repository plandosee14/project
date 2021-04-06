package com.dreamup.common.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dreamup.member.domain.MemberDTO;
import com.dreamup.member.service.MemberService;

@RestController
public class LoginController {
   
   @Resource(name = "memberService")
      private MemberService service;
   
   @RequestMapping(value="/login.do", method = RequestMethod.POST)
   public String login(String login_mail, String login_pass,HttpSession session) {
      // System.out.println(login_mail + "/" + login_pass);
	  
	   MemberDTO member = service.idPassCheck(login_mail, login_pass);
	   if(member==null) {
		   return "fail";
	   }else {
		   session.setAttribute("session", member);
		   return "success";
	   }
   }
   
   @RequestMapping(value="/logout.do", method = RequestMethod.POST)
   public void logout() {
	   
   }

}