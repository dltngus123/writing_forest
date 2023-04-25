package com.forest.action.writer.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;

public class WriterMyModifyAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/writer/my/modify.jsp";
		return url;
	}

}
