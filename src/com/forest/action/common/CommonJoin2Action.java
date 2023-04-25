package com.forest.action.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.MemberVO;
import com.forest.service.MemberService;

public class CommonJoin2Action implements Action {
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService= memberService;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/common/joinSuccess.jsp";
		String member_id=request.getParameter("member_id");
		String member_pwd=request.getParameter("member_pwd");
		String member_phone=request.getParameter("member_phone");
		String member_email=request.getParameter("member_email");
		String member_img=request.getParameter("member_img");
		String member_nic=request.getParameter("member_nic");
		String member_pr=request.getParameter("member_pr");
		String[] member_category=request.getParameterValues("member_category");
		String member_name=request.getParameter("member_name");
		
		MemberVO member= new MemberVO();
		
		member.setMember_id(member_id);
		member.setMember_pwd(member_pwd);
		member.setMember_authority(1);
		member.setMember_email(member_email);
		member.setMember_img(member_img);
		member.setMember_category(member_category[0]+","+member_category[1]+","+member_category[2]);
		member.setMember_nic(member_nic);
		member.setMember_pr(member_pr);
		member.setMember_phone(member_phone);
		member.setMember_name(member_name);
		
		memberService.regist(member);
		
		return url;
	}

}
