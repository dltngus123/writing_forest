package com.forest.service;

import java.sql.SQLException;
import java.util.Map;

import com.forest.SearchCriteria;
import com.forest.dto.MemberVO;



public interface MemberService {

	//로그인 성공:0 아이디불일치:1 패스워드불일치:2
	int login(String id, String pwd);
	//리스트
	Map<String,Object> getMemberList(SearchCriteria cri)throws SQLException;
	
	//회원상세
	MemberVO getMember(String member_id)throws SQLException;
	
	//회원등록
	void regist(MemberVO member)throws SQLException;
	
	//회원수정
	void modify(MemberVO member)throws SQLException;
	
	//회원삭제
	void remove(String member_id)throws SQLException;
}
