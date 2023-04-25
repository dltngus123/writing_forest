package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import com.forest.SearchCriteria;
import com.forest.dto.MemberVO;



public interface MemberDAO {
	

	List<MemberVO>selectSearchMemberList(SearchCriteria cri)throws SQLException;
	
	int selectSearchMemberListCount(SearchCriteria cri)throws SQLException;

	MemberVO selectMemberById(String member_id)throws SQLException;
	
	void insertMember(MemberVO member)throws SQLException;
	
	void updateMember(MemberVO member)throws SQLException;
	
	void deleteMember(String member_id)throws SQLException;
}
