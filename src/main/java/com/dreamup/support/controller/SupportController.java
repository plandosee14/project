package com.dreamup.support.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dreamup.project.domain.ProjectDTO;

@Controller
public class SupportController {

	@RequestMapping(value="/support.do")
	public String test(ProjectDTO project) {
		System.out.println("들어오냐?");
		System.out.println(project);
		return "supportView";
	}
}
