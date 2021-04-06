package com.dreamup.support.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewSupportController {
	
	@RequestMapping(value="/view/support/support_selectReward_view.do")
	public String supportSelectReward() {
		return "support/support_selectReward_view";
	}
}
