package com.forest.action.writer.help.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.NoticeVO;
import com.forest.service.NoticeService;

public class WriterNoticeDetailAction implements Action {
	
	private NoticeService noticeservice;

	public void setNoticeservice(NoticeService noticeservice) {
		this.noticeservice = noticeservice;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/help/notice/detail.jsp";
		
		int notice_num=Integer.parseInt(request.getParameter("notice_num"));
		String from = request.getParameter("from");
		
		NoticeVO notice = null;
		
		if (from!= null && from.equals("list")) {
			notice = noticeservice.getNotice(notice_num);
			url="redirect:/writer/help/notice/detail.do?notice_num="+notice_num;
		}else {
			notice = noticeservice.getNoticeForModify(notice_num);
			
		}
		request.setAttribute("notice", notice);
		return url;
		
	}

}
