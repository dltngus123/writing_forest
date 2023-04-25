package com.forest.action.writer.help.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.QuestionVO;
import com.forest.service.QuestionService;

public class WriterQuestionRegistAction implements Action {
	
	private QuestionService questionservice;

	public void setQuestionservice(QuestionService questionservice) {
		this.questionservice = questionservice;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/help/question/regist_success.jsp";
		
		QuestionVO question = new QuestionVO();
		
		question.setQ_title(request.getParameter("q_title"));
		question.setQ_content(request.getParameter("q_content"));
		question.setMember_id(request.getParameter("member_id"));

		questionservice.regist(question);
		
		return url;
	}

}
