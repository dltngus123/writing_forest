package com.forest.action.common;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.forest.action.Action;
import com.forest.dto.MemberVO;
import com.forest.service.MemberService;


public class CommonLoginAction implements Action {
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/common/loginSuccess.jsp";
		String sendURL="";
		String id = request.getParameter("member_id");
		String pwd = request.getParameter("member_pwd");

		int result = memberService.login(id, pwd);
		int auth=0;

		switch (result) {
		case 0: //로그인 성공
			MemberVO loginUser = memberService.getMember(id);
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			session.setMaxInactiveInterval(60 * 60);
			auth=loginUser.getMember_authority();
			if(auth==1) {
				sendURL="/writer/main.do";
			    session.setAttribute("sendURL", sendURL);
			}else if(auth==2) {
				sendURL="/manager/main.do";
				session.setAttribute("sendURL", sendURL);
			}
			
			break;
		case 1: //아이디 불일치
			url="redirect:/common/loginForm.do";
			break;
		case 2: //패스워드 불일치
			url="redirect:/common/loginForm.do";
			break;
		}

		return url;
	}
	
}
