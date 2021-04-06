package com.dreamup.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewBoardController {
	
	@RequestMapping(value="/view/board/qna.do")
	public String abc() {
		return "board/qna";
	}
}
