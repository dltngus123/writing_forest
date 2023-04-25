package com.forest.action.manager.help.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.NoticeVO;
import com.forest.dto.QuestionVO;
import com.forest.service.NoticeService;

public class ManagerNoticeRegistAction implements Action {

	private NoticeService noticeservice;
	
	public void setNoticeservice(NoticeService noticeservice) {
		this.noticeservice = noticeservice;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/manager/help/notice/regist_success.jsp";
		
		NoticeVO notice= new NoticeVO();
		
		notice.setNotice_title(request.getParameter("notice_title"));
		notice.setNotice_content(request.getParameter("notice_content"));
		notice.setMember_id(request.getParameter("manager_id"));

		noticeservice.regist(notice);
		
		return url;
	}

}
