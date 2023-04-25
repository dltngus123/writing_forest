package com.forest.action.manager.help.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.NoticeVO;
import com.forest.service.NoticeService;

public class ManagerNoticeModifyFormAction implements Action{
	
	private NoticeService noticeservice;

	public void setNoticeservice(NoticeService noticeservice) {
		this.noticeservice = noticeservice;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/manager/help/notice/modify.jsp";
		
		int notice_num=Integer.parseInt(request.getParameter("notice_num"));
		
		NoticeVO notice= noticeservice.getNoticeForModify(notice_num);
		
		request.setAttribute("notice", notice);
		
		return url;

	}

}
