package com.forest.action.writer.fund;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.service.ReplyService;

public class WriterFundReplyRemoveAction implements Action{
	
	private ReplyService replyservice;

	public void setReplyservice(ReplyService replyservice) {
		this.replyservice = replyservice;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="redirect:/writer/fund/detail.do?fun_num=";
		
		int fun_num=Integer.parseInt(request.getParameter("fun_num"));
		
		int reply_num=Integer.parseInt(request.getParameter("reply_num"));
		
		
		replyservice.removeReply(reply_num);		
		
		return url+=fun_num;
	}

}
