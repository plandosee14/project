package com.dreamup.project.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dreamup.project.domain.ProjectDTO;
import com.dreamup.project.service.ProjectService;
import com.dreamup.reward.service.RewardService;


@Controller
public class ProjectController {
   @Resource(name="projectService")
   private ProjectService projectService;
   @Resource(name="rewardService")
   private RewardService rewardService;
   
   
   //project, reward project_No별 List 뿌리기 (동일 url mapping하기위해 동일 controller사용!!)
   @RequestMapping(value="/projectInfoView.do" )
   public String project(@RequestParam(value="project_No", required=false, defaultValue="1")int project_No,ProjectDTO dto,HttpSession session) {
      session.setAttribute("project", projectService.selectProject(dto)); //각 service로 이동
      session.setAttribute("rewards", rewardService.selectReward(project_No));
      //System.out.println("con="+session);
   
      return "redirect:view/project/projectInfoView.jsp";
   }

}
   
