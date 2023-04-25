package com.forest.dto;

import java.util.Date;

public class WritingVO {

	private int writing_num;
	private String writing_title;
	private String writing_stitle;
	private String writing_content;
	private String writing_himg;
	private String writing_category;
	private Date writing_date;
	private Date update_date;
	private int writing_state;
	private String member_id;
	private int writing_view;
	
	
	public int getWriting_num() {
		return writing_num;
	}
	public void setWriting_num(int writing_num) {
		this.writing_num = writing_num;
	}
	public String getWriting_title() {
		return writing_title;
	}
	public void setWriting_title(String writing_title) {
		this.writing_title = writing_title;
	}
	public String getWriting_stitle() {
		return writing_stitle;
	}
	public void setWriting_stitle(String writing_stitle) {
		this.writing_stitle = writing_stitle;
	}
	public String getWriting_content() {
		return writing_content;
	}
	public void setWriting_content(String writing_content) {
		this.writing_content = writing_content;
	}
	public String getWriting_himg() {
		return writing_himg;
	}
	public void setWriting_himg(String writing_himg) {
		this.writing_himg = writing_himg;
	}
	public String getWriting_category() {
		return writing_category;
	}
	public void setWriting_category(String writing_category) {
		this.writing_category = writing_category;
	}
	public Date getWriting_date() {
		return writing_date;
	}
	public void setWriting_date(Date writing_date) {
		this.writing_date = writing_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public int getWriting_state() {
		return writing_state;
	}
	public void setWriting_state(int writing_state) {
		this.writing_state = writing_state;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getWriting_view() {
		return writing_view;
	}
	public void setWriting_view(int writing_view) {
		this.writing_view = writing_view;
	}
	
	
	
}
