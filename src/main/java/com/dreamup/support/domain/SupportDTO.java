package com.dreamup.support.domain;

public class SupportDTO {

   private int support_No;
   private int project_No;
   private int member_No;
   private String support_Category;
   private int reword_No;
   private String member_Name;
   private int pay_Method;
   private String pay_Bank;
   private String pay_Account;
   private int support_Amount;
   private String payback_Bank;
   private String payback_Account;
   private String support_Date;

   public int getSupport_No() {
      return support_No;
   }

   public void setSupport_No(int support_No) {
      this.support_No = support_No;
   }

   public int getProject_No() {
      return project_No;
   }

   public void setProject_No(int project_No) {
      this.project_No = project_No;
   }

   public int getMember_No() {
      return member_No;
   }

   public void setMember_No(int member_No) {
      this.member_No = member_No;
   }

   public String getSupport_Category() {
      return support_Category;
   }

   public void setSupport_Category(String support_Category) {
      this.support_Category = support_Category;
   }

   public int getReword_No() {
      return reword_No;
   }

   public void setReword_No(int reword_No) {
      this.reword_No = reword_No;
   }

   public String getMember_Name() {
      return member_Name;
   }

   public void setMember_Name(String member_Name) {
      this.member_Name = member_Name;
   }

   public int getPay_Method() {
      return pay_Method;
   }

   public void setPay_Method(int pay_Method) {
      this.pay_Method = pay_Method;
   }

   public String getPay_Bank() {
      return pay_Bank;
   }

   public void setPay_Bank(String pay_Bank) {
      this.pay_Bank = pay_Bank;
   }

   public String getPay_Account() {
      return pay_Account;
   }

   public void setPay_Account(String pay_Account) {
      this.pay_Account = pay_Account;
   }

   public int getSupport_Amount() {
      return support_Amount;
   }

   public void setSupport_Amount(int support_Amount) {
      this.support_Amount = support_Amount;
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

   public String getSupport_Date() {
      return support_Date;
   }

   public void setSupport_Date(String support_Date) {
      this.support_Date = support_Date;
   }

   @Override
   public String toString() {
      return "SupportDTO [support_No=" + support_No + ", project_No=" + project_No + ", member_No=" + member_No
            + ", support_Category=" + support_Category + ", reword_No=" + reword_No + ", member_Name=" + member_Name
            + ", pay_Method=" + pay_Method + ", pay_Bank=" + pay_Bank + ", pay_Account=" + pay_Account
            + ", support_Amount=" + support_Amount + ", payback_Bank=" + payback_Bank + ", payback_Account="
            + payback_Account + ", support_Date=" + support_Date + "]";
   }

}