package com.dreamup.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewProjectController {
	
	@RequestMapping(value="/projectBasicInfoView.do")
	public String projectBasicInfoView() {
	      return "project/register/projectBasicInfoView";
	}
}
