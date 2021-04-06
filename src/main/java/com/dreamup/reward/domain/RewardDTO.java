package com.dreamup.reward.domain;                                                                                  
                                                                                                                    
public class RewardDTO {                                                                                            
   private int reward_No;                                                                                          
   private int project_No;                                                                                         
   private String reward_Title;                                                                                    
   private String reward_Items;                                                                                    
   private int reward_Limited_Count;                                                                               
   private int reward_Amount;                                                                                      
   private String reward_Delivery_Date;                                                                            
                                                                                                                    
   public int getReward_No() {                                                                                     
      return reward_No;                                                                                           
   }                                                                                                               
                                                                                                                    
   public void setReward_No(int reward_No) {                                                                       
      this.reward_No = reward_No;                                                                                 
   }                                                                                                               
                                                                                                                    
   public int getProject_No() {                                                                                    
      return project_No;                                                                                          
   }                                                                                                               
                                                                                                                    
   public void setProject_No(int project_No) {                                                                     
      this.project_No = project_No;                                                                               
   }                                                                                                               
                                                                                                                    
   public String getReward_Title() {                                                                               
      return reward_Title;                                                                                        
   }                                                                                                               
                                                                                                                    
   public void setReward_Title(String reward_Title) {                                                              
      this.reward_Title = reward_Title;                                                                           
   }                                                                                                               
                                                                                                                    
   public String getReward_Items() {                                                                               
      return reward_Items;                                                                                        
   }                                                                                                               
                                                                                                                    
   public void setReward_Items(String reward_Items) {                                                              
      this.reward_Items = reward_Items;                                                                           
   }                                                                                                               
                                                                                                                    
   public int getReward_Limited_Count() {                                                                          
      return reward_Limited_Count;                                                                                
   }                                                                                                               
                                                                                                                    
   public void setReward_Limited_Count(int reward_Limited_Count) {                                                 
      this.reward_Limited_Count = reward_Limited_Count;                                                           
   }                                                                                                               
                                                                                                                    
   public int getReward_Amount() {                                                                                 
      return reward_Amount;                                                                                       
   }                                                                                                               
                                                                                                                    
   public void setReward_Amount(int reward_Amount) {                                                               
      this.reward_Amount = reward_Amount;                                                                         
   }                                                                                                               
                                                                                                                    
   public String getReward_Delivery_Date() {                                                                       
      return reward_Delivery_Date;                                                                                
   }                                                                                                               
                                                                                                                    
   public void setReward_Delivery_Date(String reward_Delivery_Date) {                                              
      this.reward_Delivery_Date = reward_Delivery_Date;                                                           
   }                                                                                                               
                                                                                                                    
   @Override                                                                                                       
   public String toString() {                                                                                      
      return "RewardDTO [reward_No=" + reward_No + ", project_No=" + project_No + ", reward_Title=" + reward_Title
            + ", reward_Items=" + reward_Items + ", reward_Limited_Count=" + reward_Limited_Count               
            + ", reward_Amount=" + reward_Amount + ", reward_Delivery_Date=" + reward_Delivery_Date + "]";      
   }                                                                                                               
                                                                                                                    
}                                                                                                                   
                                                                                                                    