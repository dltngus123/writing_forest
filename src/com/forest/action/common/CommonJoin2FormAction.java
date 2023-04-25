package com.forest.action.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.MemberVO;

public class CommonJoin2FormAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/common/join2.jsp";
		String member_id=request.getParameter("member_id");
		String member_pwd=request.getParameter("member_pwd");
		String member_phone=request.getParameter("member_phone");
		String member_email=request.getParameter("member_email");
	    String member_name=request.getParameter("member_name");
	    
	    MemberVO member = new MemberVO();
	    
	    member.setMember_id(member_id);
	    member.setMember_pwd(member_pwd);
	    member.setMember_phone(member_phone);
	    member.setMember_email(member_email);
	    member.setMember_name(member_name);
	    
	    request.setAttribute("member", member);
	    
	     
		return url;
	}

}
