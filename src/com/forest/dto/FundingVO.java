package com.forest.dto;

import java.util.Date;

public class FundingVO {
	
	private int fun_num;
	private String fun_title;
	private String fun_content;
	private int fun_money;
	private Date fun_updateDate;
	private Date fun_regDate;
	private Date fun_endDate;
	private String member_id;
	private int fun_view=0;
	private String manager_id;
	private String fun_stitle;
	private int fun_state=1;
	private String fun_img;
	private String fun_category;
	private int replycnt=0;
	
	public String getFun_category() {
		return fun_category;
	}
	public void setFun_category(String fun_category) {
		this.fun_category = fun_category;
	}
	public Date getFun_endDate() {
		return fun_endDate;
	}
	public void setFun_endDate(Date fun_endDate) {
		this.fun_endDate = fun_endDate;
	}
	public int getReplycnt() {
		return replycnt;
	}
	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}
	public int getFun_num() {
		return fun_num;
	}
	public void setFun_num(int fun_num) {
		this.fun_num = fun_num;
	}
	public String getFun_title() {
		return fun_title;
	}
	public void setFun_title(String fun_title) {
		this.fun_title = fun_title;
	}
	public String getFun_content() {
		return fun_content;
	}
	public void setFun_content(String fun_content) {
		this.fun_content = fun_content;
	}
	public int getFun_money() {
		return fun_money;
	}
	public void setFun_money(int fun_money) {
		this.fun_money = fun_money;
	}
	public Date getFun_updateDate() {
		return fun_updateDate;
	}
	public void setFun_updateDate(Date fun_updateDate) {
		this.fun_updateDate = fun_updateDate;
	}
	public Date getFun_regDate() {
		return fun_regDate;
	}
	public void setFun_regDate(Date fun_regDate) {
		this.fun_regDate = fun_regDate;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getFun_view() {
		return fun_view;
	}
	public void setFun_view(int fun_view) {
		this.fun_view = fun_view;
	}
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}
	public String getFun_stitle() {
		return fun_stitle;
	}
	public void setFun_stitle(String fun_stitle) {
		this.fun_stitle = fun_stitle;
	}
	public int getFun_state() {
		return fun_state;
	}
	public void setFun_state(int fun_state) {
		this.fun_state = fun_state;
	}
	public String getFun_img() {
		return fun_img;
	}
	public void setFun_img(String fun_img) {
		this.fun_img = fun_img;
	}
}
