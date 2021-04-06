package com.dreamup.member.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dreamup.member.domain.MemberDTO;
import com.dreamup.member.persistence.MemberDAO;

@Service
public class MemberService {
   
   @Resource(name="memberDAO")
   MemberDAO dao;
   
   public boolean idDuplicationCheck(String member_authMail) {
      return dao.idDuplicationCheck(member_authMail);
   }
   
   public String findPass(MemberDTO member) {
         return dao.findPass(member);
      }
   
   public int memberInsert(MemberDTO memberDTO ) {
         

         return dao.memberInsert(memberDTO);
      }
   
   public MemberDTO idPassCheck(String login_mail, String login_pass) {
      HashMap<String, String> map = new HashMap<String, String>();
      // System.out.println(login_mail+login_pass);
      map.put("login_mail", login_mail);
      map.put("login_pass", login_pass);
      
      return dao.idPassCheck(map);
      // System.out.println(map);
      
      /*if (dao.idPassCheck(map)==1) {
         return "success";
      } else {
         return "fail";
      }*/
   }
   
   public String passwordEdit(String login_mail, String login_pass, String new_pass) {
      HashMap<String, String> map = new HashMap<String, String>();
      if (login_mail == null || login_pass == null || new_pass == null) return "fail";
      map.put("login_mail", login_mail);
      map.put("login_pass", login_pass);
      map.put("new_pass", new_pass);
      dao.passwordEdit(map);
      return "success";
   }
}