package com.forest.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.forest.PageMaker;
import com.forest.SearchCriteria;
import com.forest.dao.MemberDAO;
import com.forest.dto.MemberVO;



public class MemberServiceImpl implements MemberService {
	
	private MemberDAO memberDAO; 
	
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO=memberDAO;
	}
	
	
	public Map<String, Object> getMemberList(SearchCriteria cri) throws SQLException {
		Map<String,Object> dataMap = new HashMap<String,Object>();
		List<MemberVO> memberList=memberDAO.selectSearchMemberList(cri);
		dataMap.put("memberList", memberList);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(memberDAO.selectSearchMemberListCount(cri));
		dataMap.put("pageMaker",pageMaker);
		
		
		return dataMap;
	}
	
	@Override
	public MemberVO getMember(String member_id) throws SQLException {
		MemberVO member= memberDAO.selectMemberById(member_id);
		return member;
	}

	
	@Override
	public int login(String member_id, String member_pwd) {
		int result=0;
		
		MemberVO member;
		try {
			member = memberDAO.selectMemberById(member_id);
			if(member!=null) {
				if(member_pwd.equals(member.getMember_pwd())){
					result=0;
				}else {
					result=2;
				}
			}else {
				result=1;
			} 
			
		} catch (SQLException e) {
			result=3;
			e.printStackTrace();
		}
		
		return result;
		
	}

	@Override
	public void modify(MemberVO member) throws SQLException {
		memberDAO.updateMember(member);
		
	}

	@Override
	public void regist(MemberVO member) throws SQLException {
		
		memberDAO.insertMember(member);
		
	}

	@Override
	public void remove(String member_id) throws SQLException {
		memberDAO.deleteMember(member_id);
		
	}



}
