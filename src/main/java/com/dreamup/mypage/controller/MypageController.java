package com.dreamup.mypage.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dreamup.member.domain.MemberDTO;
import com.dreamup.member.service.MemberService;

@Controller
public class MypageController {
   
   @Resource(name = "memberService")
   private MemberService service;

   @ResponseBody
   @RequestMapping(value="/password_check.do", method=RequestMethod.POST)
   public String password_check(String login_mail, String login_pass) {
      MemberDTO member = service.idPassCheck(login_mail, login_pass);
      System.out.println(member);
      if(member == null) {
         return "fail";
      } else {
         return "success";
      }
   }
   
   @ResponseBody
   @RequestMapping(value="/password_edit.do", method=RequestMethod.POST)
   public String password_edit(String login_mail, String login_pass, String new_pass) {
      return service.passwordEdit(login_mail, login_pass, new_pass);
   }
}