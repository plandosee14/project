package com.dreamup.reward.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dreamup.project.domain.ProjectDTO;
import com.dreamup.reward.domain.RewardDTO;

@Repository
public class RewardDAO extends SqlSessionDaoSupport {

   @Inject
   public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
      // TODO Auto-generated method stub
      super.setSqlSessionFactory(sqlSessionFactory);
   }
   
   
   public List<RewardDTO> selectReward(int project_No) {
      List<RewardDTO> list=null;
      list=this.getSqlSession().selectList("selectReward", project_No);
      
      System.out.println(list);
      return list;
      
   }
   

}