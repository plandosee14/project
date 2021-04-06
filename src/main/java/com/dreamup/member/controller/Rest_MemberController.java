package com.dreamup.member.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.dreamup.member.domain.MemberDTO;
import com.dreamup.member.service.MemberService;

@RestController
public class Rest_MemberController {

	@Resource(name = "memberService")
	private MemberService service;

	@RequestMapping(value = "/idDuplicationCheck.do", method = RequestMethod.POST)
	public String idDuplicationCheck(String member_authMail) {
		// System.out.println("controller:
		// "+service.idDuplicationCheck(member_authMail));

		if (member_authMail.equals("")) {
			return "noResult";
		} else if (service.idDuplicationCheck(member_authMail)) {
			// System.out.println("결과: "+service.idDuplicationCheck(member_authMail));

			return "success";
		} else {
			return "fail";

		}

	}

	@RequestMapping(value = "/checkMemberMail.do")
	public String checkMemberMail(String member_mail) {
		if (member_mail.equals("")) {
			return "noResult";
		} else if (!service.idDuplicationCheck(member_mail)) {// 아이디가 같은 것이 존재할 경우 false 리턴.
			// System.out.println("결과: "+service.idDuplicationCheck(member_mail));
			return "success";
		} else {
			return "fail";
		}
	}

	@RequestMapping(value = "/findPass.do")
	public String findPass(MemberDTO member) {
		System.out.println(member);
		return service.findPass(member);
	}

	@RequestMapping(value = "/memberJoin.do", method = RequestMethod.POST)
	public String memberJoin(MemberDTO memberDTO) {

		System.out.println(memberDTO);
		if (service.memberInsert(memberDTO) == 1) {

			return "success";
		} else {

			return "fail";
		}

	}
}
