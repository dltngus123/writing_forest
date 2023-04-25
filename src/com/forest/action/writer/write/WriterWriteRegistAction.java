package com.forest.action.writer.write;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.WritingVO;
import com.forest.service.WritingService;

public class WriterWriteRegistAction implements Action {

	private WritingService writingService;
	public void setWritingService (WritingService writingService) {
		this.writingService=writingService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="redirect:/writer/write/list.do";		
		String member_id=request.getParameter("member_id");
		String writing_title=request.getParameter("writing_title");
		String writing_stitle=request.getParameter("writing_stitle");
		String writing_content=request.getParameter("writing_content");
		String writing_himg=request.getParameter("writing_himg");
		int writing_state=Integer.parseInt(request.getParameter("writing_state"));
		
		WritingVO writing= new WritingVO();
	    
		
		writing.setMember_id(member_id);
		writing.setWriting_title(writing_title);
		writing.setWriting_content(writing_content);
		writing.setWriting_himg(writing_himg);
	    writing.setWriting_stitle(writing_stitle);
		writing.setWriting_state(writing_state);
		
		writingService.regist(writing);
		
		
		return url;
	}

}
