package com.forest.dto;

import java.util.Date;

public class PaymentVO {
	
	private int pay_num;
	private int pay_amount;
	private Date day_date=new Date();
	private String member_id;
	private int fun_num;
	
	private int totalmember;
	
	
	public int getTotalmember() {
		return totalmember;
	}
	public void setTotalmember(int totalmember) {
		this.totalmember = totalmember;
	}
	public int getPay_num() {
		return pay_num;
	}
	public void setPay_num(int pay_num) {
		this.pay_num = pay_num;
	}
	public void setPay_num(String pay_num) {
		this.pay_num = Integer.parseInt(pay_num);
	}
	public int getPay_amount() {
		return pay_amount;
	}
	public void setPay_amount(int pay_amount) {
		this.pay_amount = pay_amount;
	}
	public Date getDay_date() {
		return day_date;
	}
	public void setDay_date(Date day_date) {
		this.day_date = day_date;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getFun_num() {
		return fun_num;
	}
	public void setFun_num(int fun_num) {
		this.fun_num = fun_num;
	}
}
