package com.forest.action.writer.fund;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;

public class WriterFundRegistFormAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/writer/fund/regist.jsp";
		return url;
	}

}
