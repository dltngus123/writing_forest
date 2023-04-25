package com.forest.action.writer.help.fnq;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;

public class WriterFnqListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/help/fnq/list.jsp";
		return url;
	}

}
