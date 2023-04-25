package com.forest.action.common.write;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.WritingVO;
import com.forest.service.WritingService;

public class CommonWriteDetailAction implements Action {
	private WritingService writingService;
	public void setWritingService(WritingService writingService) {
		this.writingService=writingService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/common/write/detail.jsp";
		
		int writing_num=Integer.parseInt(request.getParameter("writing_num"));
		
		WritingVO writing=writingService.getWriting(writing_num);
		
		request.setAttribute("writing", writing);
		
		return url;

	}

}
