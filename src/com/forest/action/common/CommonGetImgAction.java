package com.forest.action.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.MemberVO;
import com.forest.service.MemberService;
import com.forest.utils.FileDownloadResolver;
import com.forest.utils.GetUploadPath;



public class CommonGetImgAction implements Action{
	private MemberService memberService;
	public void setSearchMemberService(MemberService memberService) {
		this.memberService=memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String member_id = request.getParameter("member_id");
		MemberVO member = memberService.getMember(member_id);
		String fileName = member.getMember_img();
		String savedPath = GetUploadPath.getUploadPath("member.picture.upload");	
		
		FileDownloadResolver.sendFile(fileName,savedPath,request,response);
		
		return url;
	}

}
