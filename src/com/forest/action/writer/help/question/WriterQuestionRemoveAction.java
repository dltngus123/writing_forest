package com.forest.action.writer.help.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.service.QuestionService;

public class WriterQuestionRemoveAction implements Action{
	
	private QuestionService questionservice;

	public void setQuestionservice(QuestionService questionservice) {
		this.questionservice = questionservice;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/help/question/remove_success.jsp";
		
		int q_num=Integer.parseInt(request.getParameter("q_num"));
		
		
		questionservice.remove(q_num);
		
		return url;
	}

}
