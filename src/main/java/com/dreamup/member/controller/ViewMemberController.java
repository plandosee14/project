package com.dreamup.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ViewMemberController {
	@RequestMapping(value="/view/member/joinForm.do")
	public String joinForm() {
		return "member/joinForm";
	}
	
	@RequestMapping(value="/view/member/findView.do")
	public String findView() {
		return "member/findView";
	}
}
