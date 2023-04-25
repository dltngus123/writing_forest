package com.forest.dto;

import java.util.Date;

public class QuestionVO {

	private int q_num;
	private String q_title="";
	private String q_content="";
	private Date q_date=new Date();;
	private String q_answer;
	private Date q_answerdate=new Date();;
	private String member_id;
	private String manager_id;
	
	
	public int getQ_num() {
		return q_num;
	}
	public void setQ_num(int q_num) {
		this.q_num = q_num;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public Date getQ_date() {
		return q_date;
	}
	public void setQ_date(Date q_date) {
		this.q_date = q_date;
	}
	public String getQ_answer() {
		return q_answer;
	}
	public void setQ_answer(String q_answer) {
		this.q_answer = q_answer;
	}
	public Date getQ_answerdate() {
		return q_answerdate;
	}
	public void setQ_answerdate(Date q_answerdate) {
		this.q_answerdate = q_answerdate;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}
	
	
}
