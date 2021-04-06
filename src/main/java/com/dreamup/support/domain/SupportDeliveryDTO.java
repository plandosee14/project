package com.dreamup.support.domain;

public class SupportDeliveryDTO {
   private int support_No;
   private int delivery_Invoice;
   private int member_No;
   private String sender_Name;
   private String sender_Address;
   private String sender_Phone;
   private String receiver_Name;
   private String receiver_Phone;
   private String receiver_Address;
   private String receiver_Message;
   private String delivery_Check;

   public int getSupport_No() {
      return support_No;
   }

   public void setSupport_No(int support_No) {
      this.support_No = support_No;
   }

   public int getDelivery_Invoice() {
      return delivery_Invoice;
   }

   public void setDelivery_Invoice(int delivery_Invoice) {
      this.delivery_Invoice = delivery_Invoice;
   }

   public int getMember_No() {
      return member_No;
   }

   public void setMember_No(int member_No) {
      this.member_No = member_No;
   }

   public String getSender_Name() {
      return sender_Name;
   }

   public void setSender_Name(String sender_Name) {
      this.sender_Name = sender_Name;
   }

   public String getSender_Address() {
      return sender_Address;
   }

   public void setSender_Address(String sender_Address) {
      this.sender_Address = sender_Address;
   }

   public String getSender_Phone() {
      return sender_Phone;
   }

   public void setSender_Phone(String sender_Phone) {
      this.sender_Phone = sender_Phone;
   }

   public String getReceiver_Name() {
      return receiver_Name;
   }

   public void setReceiver_Name(String receiver_Name) {
      this.receiver_Name = receiver_Name;
   }

   public String getReceiver_Phone() {
      return receiver_Phone;
   }

   public void setReceiver_Phone(String receiver_Phone) {
      this.receiver_Phone = receiver_Phone;
   }

   public String getReceiver_Address() {
      return receiver_Address;
   }

   public void setReceiver_Address(String receiver_Address) {
      this.receiver_Address = receiver_Address;
   }

   public String getReceiver_Message() {
      return receiver_Message;
   }

   public void setReceiver_Message(String receiver_Message) {
      this.receiver_Message = receiver_Message;
   }

   public String getDelivery_Check() {
      return delivery_Check;
   }

   public void setDelivery_Check(String delivery_Check) {
      this.delivery_Check = delivery_Check;
   }

   @Override
   public String toString() {
      return "SupportDeliveryDTO [support_No=" + support_No + ", delivery_Invoice=" + delivery_Invoice
            + ", member_No=" + member_No + ", sender_Name=" + sender_Name + ", sender_Address=" + sender_Address
            + ", sender_Phone=" + sender_Phone + ", receiver_Name=" + receiver_Name + ", receiver_Phone="
            + receiver_Phone + ", receiver_Address=" + receiver_Address + ", receiver_Message=" + receiver_Message
            + ", delivery_Check=" + delivery_Check + "]";
   }

}