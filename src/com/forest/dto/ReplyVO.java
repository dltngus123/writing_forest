package com.forest.dto;

import java.util.Date;

public class ReplyVO {
   
   private int reply_num;
   private String reply_content;
   private Date reply_date;
   private String member_id;
   private int writing_num;
   private int fun_num;
   private Date updatedate;
   
   
   public Date getUpdatedate() {
      return updatedate;
   }
   public void setUpdatedate(Date updatedate) {
      this.updatedate = updatedate;
   }
   public int getReply_num() {
      return reply_num;
   }
   public void setReply_num(int reply_num) {
      this.reply_num = reply_num;
   }
   public String getReply_content() {
      return reply_content;
   }
   public void setReply_content(String reply_content) {
      this.reply_content = reply_content;
   }
   public Date getReply_date() {
      return reply_date;
   }
   public void setReply_date(Date reply_date) {
      this.reply_date = reply_date;
   }
   public String getMember_id() {
      return member_id;
   }
   public void setMember_id(String member_id) {
      this.member_id = member_id;
   }
   public int getWriting_num() {
      return writing_num;
   }
   public void setWriting_num(int writing_num) {
      this.writing_num = writing_num;
   }
   public int getFun_num() {
      return fun_num;
   }
   public void setFun_num(int fun_num) {
      this.fun_num = fun_num;
   }
   
   

}