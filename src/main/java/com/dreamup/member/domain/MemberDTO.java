package com.dreamup.member.domain;


import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("MemberDTO")
public class MemberDTO {
   private int member_No;
   private String member_Mail;
   private String member_Pass;
   private String member_Name;
   private Date member_Regdate;
   private String member_Stop_State;
   private String member_Withdraw_State;
   private String payback_Bank;
   private String payback_Account;
   private String member_Profile;

   public int getMember_No() {
      return member_No;
   }

   public void setMember_No(int member_No) {
      this.member_No = member_No;
   }

   public String getMember_Mail() {
      return member_Mail;
   }

   public void setMember_Mail(String member_Mail) {
      this.member_Mail = member_Mail;
   }

   public String getMember_Pass() {
      return member_Pass;
   }

   public void setMember_Pass(String member_Pass) {
      this.member_Pass = member_Pass;
   }

   public String getMember_Name() {
      return member_Name;
   }

   public void setMember_Name(String member_Name) {
      this.member_Name = member_Name;
   }

   public Date getMember_Regdate() {
      return member_Regdate;
   }

   public void setMember_Regdate(Date member_Regdate) {
      this.member_Regdate = member_Regdate;
   }

   public String getMember_Stop_State() {
      return member_Stop_State;
   }

   public void setMember_Stop_State(String member_Stop_State) {
      this.member_Stop_State = member_Stop_State;
   }

   public String getMember_Withdraw_State() {
      return member_Withdraw_State;
   }

   public void setMember_Withdraw_State(String member_Withdraw_State) {
      this.member_Withdraw_State = member_Withdraw_State;
   }

   public String getPayback_Bank() {
      return payback_Bank;
   }

   public void setPayback_Bank(String payback_Bank) {
      this.payback_Bank = payback_Bank;
   }

   public String getPayback_Account() {
      return payback_Account;
   }

   public void setPayback_Account(String payback_Account) {
      this.payback_Account = payback_Account;
   }

   public String getMember_Profile() {
      return member_Profile;
   }

   public void setMember_Profile(String member_Profile) {
      this.member_Profile = member_Profile;
   }

   @Override
   public String toString() {
      return "MemberDto [member_No=" + member_No + ", member_Mail=" + member_Mail + ", member_Pass=" + member_Pass
            + ", member_Name=" + member_Name + ", member_Regdate=" + member_Regdate + ", member_Stop_State="
            + member_Stop_State + ", member_Withdraw_State=" + member_Withdraw_State + ", payback_Bank="
            + payback_Bank + ", payback_Account=" + payback_Account + ", member_Profile=" + member_Profile + "]";
   }

}