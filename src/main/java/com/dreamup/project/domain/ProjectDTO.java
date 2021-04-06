package com.dreamup.project.domain;

import org.apache.ibatis.type.Alias;

@Alias("ProjectDTO")
public class ProjectDTO {

   private int project_No;
   private int member_No;
   private String project_Title;
   private String project_Thumbnail;
   private String project_Category; //카테고리
   private String project_Summary;
   private String project_Start_Date; //시작일
   private String project_End_Date; //종료일
   private int project_Goal_Amount; //목표금액
   private String project_Video_Type;
   private String project_Video;
   private String project_Content; //내용
   private String project_Address;
   private String project_Bank;
   private String project_Account;
   private String project_VirTualaccount;
   private int now_Amount;
   private int supporting_Count;
   private int project_Process_State;
   private String project_Success_State;
   private String project_Show_State;
   private int project_ViewCnt;
   private int project_ReportCount;
   private String project_Date;

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

   public String getProject_Title() {
      return project_Title;
   }

   public void setProject_Title(String project_Title) {
      this.project_Title = project_Title;
   }

   public String getProject_Thumbnail() {
      return project_Thumbnail;
   }

   public void setProject_Thumbnail(String project_Thumbnail) {
      this.project_Thumbnail = project_Thumbnail;
   }

   public String getProject_Category() {
      return project_Category;
   }

   public void setProject_Category(String project_Category) {
      this.project_Category = project_Category;
   }

   public String getProject_Summary() {
      return project_Summary;
   }

   public void setProject_Summary(String project_Summary) {
      this.project_Summary = project_Summary;
   }

   public String getProject_Start_Date() {
      return project_Start_Date;
   }

   public void setProject_Start_Date(String project_Start_Date) {
      this.project_Start_Date = project_Start_Date;
   }

   public String getProject_End_Date() {
      return project_End_Date;
   }

   public void setProject_End_Date(String project_End_Date) {
      this.project_End_Date = project_End_Date;
   }

   public int getProject_Goal_Amount() {
      return project_Goal_Amount;
   }

   public void setProject_Goal_Amount(int project_Goal_Amount) {
      this.project_Goal_Amount = project_Goal_Amount;
   }

   public String getProject_Video_Type() {
      return project_Video_Type;
   }

   public void setProject_Video_Type(String project_Video_Type) {
      this.project_Video_Type = project_Video_Type;
   }

   public String getProject_Video() {
      return project_Video;
   }

   public void setProject_Video(String project_Video) {
      this.project_Video = project_Video;
   }

   public String getProject_Content() {
      return project_Content;
   }

   public void setProject_Content(String project_Content) {
      this.project_Content = project_Content;
   }

   public String getProject_Address() {
      return project_Address;
   }

   public void setProject_Address(String project_Address) {
      this.project_Address = project_Address;
   }

   public String getProject_Bank() {
      return project_Bank;
   }

   public void setProject_Bank(String project_Bank) {
      this.project_Bank = project_Bank;
   }

   public String getProject_Account() {
      return project_Account;
   }

   public void setProject_Account(String project_Account) {
      this.project_Account = project_Account;
   }

   public String getProject_VirTualaccount() {
      return project_VirTualaccount;
   }

   public void setProject_VirTualaccount(String project_VirTualaccount) {
      this.project_VirTualaccount = project_VirTualaccount;
   }

   public int getNow_Amount() {
      return now_Amount;
   }

   public void setNow_Amount(int now_Amount) {
      this.now_Amount = now_Amount;
   }

   public int getSupporting_Count() {
      return supporting_Count;
   }

   public void setSupporting_Count(int supporting_Count) {
      this.supporting_Count = supporting_Count;
   }

   public int getProject_Process_State() {
      return project_Process_State;
   }

   public void setProject_Process_State(int project_Process_State) {
      this.project_Process_State = project_Process_State;
   }

   public String getProject_Success_State() {
      return project_Success_State;
   }

   public void setProject_Success_State(String project_Success_State) {
      this.project_Success_State = project_Success_State;
   }

   public String getProject_Show_State() {
      return project_Show_State;
   }

   public void setProject_Show_State(String project_Show_State) {
      this.project_Show_State = project_Show_State;
   }

   public int getProject_ViewCnt() {
      return project_ViewCnt;
   }

   public void setProject_ViewCnt(int project_ViewCnt) {
      this.project_ViewCnt = project_ViewCnt;
   }

   public int getProject_ReportCount() {
      return project_ReportCount;
   }

   public void setProject_ReportCount(int project_ReportCount) {
      this.project_ReportCount = project_ReportCount;
   }

   public String getProject_Date() {
      return project_Date;
   }

   public void setProject_Date(String project_Date) {
      this.project_Date = project_Date;
   }

   @Override
   public String toString() {
      return "ProjectDTO [project_No=" + project_No + ", member_No=" + member_No + ", project_Title=" + project_Title
            + ", project_Thumbnail=" + project_Thumbnail + ", project_Category=" + project_Category
            + ", project_Summary=" + project_Summary + ", project_Start_Date=" + project_Start_Date
            + ", project_End_Date=" + project_End_Date + ", project_Goal_Amount=" + project_Goal_Amount
            + ", project_Video_Type=" + project_Video_Type + ", project_Video=" + project_Video
            + ", project_Content=" + project_Content + ", project_Address=" + project_Address + ", project_Bank="
            + project_Bank + ", project_Account=" + project_Account + ", project_VirTualaccount="
            + project_VirTualaccount + ", now_Amount=" + now_Amount + ", supporting_Count=" + supporting_Count
            + ", project_Process_State=" + project_Process_State + ", project_Success_State="
            + project_Success_State + ", project_Show_State=" + project_Show_State + ", project_ViewCnt="
            + project_ViewCnt + ", project_ReportCount=" + project_ReportCount + ", project_Date=" + project_Date
            + "]";
   }

}