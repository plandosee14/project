package com.dreamup.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewMypageController {
   
   @RequestMapping(value="/mypage_main.do")
   public String mypage_main() {
      return "mypage/mypage_main";
   }
   
   @RequestMapping(value="/member_info.do")
   public String member_info() {
      return "mypage/member/member_info";
   }
   
   @RequestMapping(value="/member_password_update.do")
   public String member_password_update() {
      return "mypage/member/member_password_update";
   }
}