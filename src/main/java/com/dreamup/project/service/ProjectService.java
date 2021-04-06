package com.dreamup.project.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dreamup.project.domain.ProjectDTO;
import com.dreamup.project.persistence.ProjectDAO;

@Service
public class ProjectService {
   @Resource(name = "projectDAO")
   private ProjectDAO dao;

   
   public ProjectDTO selectProject(ProjectDTO dto) {
      dao.projectViewCntAction(dto); //해당 프로젝트 클릭시 조회수
      return dao.selectProject(dto);

   }

   public int reportiongAction(ProjectDTO dto) {
      System.out.println("ser=" + dto);
      return dao.reportiongAction(dto);

   }

}