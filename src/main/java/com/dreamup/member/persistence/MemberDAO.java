package com.dreamup.member.persistence;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.dreamup.member.domain.MemberDTO;

@Repository
public class MemberDAO extends SqlSessionDaoSupport{

   @Inject
   public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
      // TODO Auto-generated method stub
      super.setSqlSessionFactory(sqlSessionFactory);
   }
   
   public boolean idDuplicationCheck(String member_authMail) {
      if ((Integer)this.getSqlSession().selectOne("member.idDuplicationCheck", member_authMail)==0) {
         return true;
      }else {
         return false;
      }
   }
   
   public String findPass(MemberDTO member) {
         this.getSqlSession().update("member.findPass", member);
         return "success";
      }
   
      public int memberInsert(MemberDTO memberDTO) {

            return this.getSqlSession().insert("memberInsert", memberDTO);
         }
   
   public MemberDTO idPassCheck(HashMap<String, String> map) {
      return this.getSqlSession().selectOne("idPassCheck",map);
      // System.out.println(a);
   }
   
   public void passwordEdit(HashMap<String, String> map) {
      this.getSqlSession().update("passwordEdit", map);
   }
}