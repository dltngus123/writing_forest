package com.forest.action.writer.write;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.forest.action.Action;
import com.forest.dto.ReplyVO;
import com.forest.service.ReplyService;

public class WriteReplyRegistAction implements Action{

	private ReplyService replyService;
	public void setReplyService(ReplyService replyService) {
		this.replyService=replyService;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		ObjectMapper mapper= new ObjectMapper();
		ReplyVO reply= mapper.readValue(request.getReader(),ReplyVO.class );
		
		replyService.registWritingReply(reply);
		
		
		
		return null;
	}

	
}
