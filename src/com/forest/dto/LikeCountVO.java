package com.forest.dto;

public class LikeCountVO {
	
	private int like_num;
	private String member_id;
	private int writing_num;
	
	public int getLike_num() {
		return like_num;
	}
	public void setLike_num(int like_num) {
		this.like_num = like_num;
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
	
}
