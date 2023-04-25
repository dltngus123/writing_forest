package com.forest.action.common.feed;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;

public class CommonFeedFundAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/common/feed/feedfund.jsp";
		return url;
	}

}
