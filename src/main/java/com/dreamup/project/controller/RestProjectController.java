package com.dreamup.project.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dreamup.member.domain.MemberDTO;
import com.dreamup.member.service.MemberService;
import com.dreamup.project.domain.ProjectDTO;
import com.dreamup.project.service.ProjectService;

@RestController
public class RestProjectController {
   @Resource(name = "projectService")
   private ProjectService projectService;

   @RequestMapping(value = "/reportiongAction.do", method = RequestMethod.POST)
   public int reportiongAction(ProjectDTO dto, HttpSession session) {

      projectService.reportiongAction(dto);
      ProjectDTO project = projectService.selectProject(dto);
      session.setAttribute("project",project);

      return project.getProject_ReportCount();
   }

}