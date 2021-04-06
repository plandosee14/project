package com.dreamup.reward.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.dreamup.reward.domain.RewardDTO;
import com.dreamup.reward.persistence.RewardDAO;

@Service
public class RewardService {
   @Resource(name="rewardDAO")
   private RewardDAO dao;
   
   
   public List<RewardDTO> selectReward(int project_No) {
      
      return dao.selectReward(project_No);
   }
   
   
}