package com.forest.action.common;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.MemberVO;
import com.forest.service.MemberService;


public class CommonIDcheakAction implements Action{

	private MemberService memberService;
	public void setSearchMemberService(MemberService memberService) {
		this.memberService=memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String resultStr = "";		
		String member_id=request.getParameter("member_id");
		
		MemberVO member = memberService.getMember(member_id);
		if(member!=null) {
			resultStr="DUPLICATED";
		}		
		
		response.setContentType("text/plain;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print(resultStr);
		out.close();
		
		return url;
	}


}
