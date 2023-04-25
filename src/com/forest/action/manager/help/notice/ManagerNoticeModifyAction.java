package com.forest.action.manager.help.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.NoticeVO;
import com.forest.service.NoticeService;

public class ManagerNoticeModifyAction implements Action {
	
	private NoticeService noticeservice;

	public void setNoticeservice(NoticeService noticeservice) {
		this.noticeservice = noticeservice;
	}



	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url ="redirect:/manager/help/notice/detail.do";
		
		NoticeVO notice= new NoticeVO();
		
		int notice_num = Integer.parseInt(request.getParameter("notice_num"));
		String notice_title = request.getParameter("notice_title");
		String notice_content = request.getParameter("notice_content");
		
		notice.setNotice_num(notice_num);
		notice.setNotice_title(notice_title);
		notice.setNotice_content(notice_content);
		
		noticeservice.modify(notice);
		
		url+="?notice_num="+notice_num;
		
		return url;

	}
}
