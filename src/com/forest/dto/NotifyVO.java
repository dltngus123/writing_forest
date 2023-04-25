package com.forest.dto;

import java.util.Date;

public class NotifyVO {
	
	private int notify_num;
	private String notify_content;
	private Date notify_date;
	private Date notify_answerdate;
	private String member_id;
	private int writing_num;
	private String manager_id;
	private int reply_num;
	private int fun_num;
	
	public int getNotify_num() {
		return notify_num;
	}
	public void setNotify_num(int notify_num) {
		this.notify_num = notify_num;
	}
	public String getNotify_content() {
		return notify_content;
	}
	public void setNotify_content(String notify_content) {
		this.notify_content = notify_content;
	}
	public Date getNotify_date() {
		return notify_date;
	}
	public void setNotify_date(Date notify_date) {
		this.notify_date = notify_date;
	}
	public Date getNotify_answerdate() {
		return notify_answerdate;
	}
	public void setNotify_answerdate(Date notify_answerdate) {
		this.notify_answerdate = notify_answerdate;
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
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}
	public int getReply_num() {
		return reply_num;
	}
	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}
	public int getFun_num() {
		return fun_num;
	}
	public void setFun_num(int fun_num) {
		this.fun_num = fun_num;
	}
}
