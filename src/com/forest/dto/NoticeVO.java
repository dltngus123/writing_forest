package com.forest.dto;

import java.util.Date;

public class NoticeVO {
	
	private int notice_num;
	private String notice_title="";
	private String notice_content="";
	private Date notice_date=new Date();
	private Date notice_updatedate=new Date();;
	private int notice_view=0;
	private String manager_id;
	
	public int getNotice_num() {
		return notice_num;
	}
	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}
	
	public void setNotice_num(String notice_num) {
		this.notice_num=Integer.parseInt(notice_num);
	}
	public String getNotice_title() {
		return notice_title;
	}
	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	public Date getNotice_updatedate() {
		return notice_updatedate;
	}
	public void setNotice_updatedate(Date notice_updatedate) {
		this.notice_updatedate = notice_updatedate;
	}
	public int getNotice_view() {
		return notice_view;
	}
	public void setNotice_view(int notice_view) {
		this.notice_view = notice_view;
	}
	public String getManager_id() {
		return manager_id;
	}
	public void setMember_id(String manager_id) {
		this.manager_id = manager_id;
	}
	
	

}
