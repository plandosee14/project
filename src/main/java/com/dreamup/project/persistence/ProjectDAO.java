package com.dreamup.project.persistence;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.dreamup.project.domain.ProjectDTO;

@Repository
public class ProjectDAO extends SqlSessionDaoSupport {

   @Inject
   public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
      // TODO Auto-generated method stub
      super.setSqlSessionFactory(sqlSessionFactory);
   }

   public ProjectDTO selectProject(ProjectDTO dto) {
      
      return this.getSqlSession().selectOne("selectProject", dto);

   }
   
   //프로젝트 신고수
   public int reportiongAction(ProjectDTO dto) {
     // System.out.println("dao="+dto);
      return this.getSqlSession().update("reportiongAction", dto);
   }
   
   //프로젝트 조회수
   public int projectViewCntAction(ProjectDTO dto) {
     // System.out.println("projectViewCntAction dao="+dto);
      return this.getSqlSession().update("projectViewCntAction", dto);
   }





}