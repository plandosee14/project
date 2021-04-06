package com.dreamup.mainView.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewMainViewController {
	
	@RequestMapping(value="/dream.do")
	   public void mainRedirect(HttpServletResponse response) throws IOException {
	      response.sendRedirect("/dreamUp/view/mainView/mainBody.jsp");
	   }
	
	@RequestMapping(value="/view/mainView/category_project_list.do")
	public String categoryProjectList() {
		return "mainView/category_project_list";
	}
}
