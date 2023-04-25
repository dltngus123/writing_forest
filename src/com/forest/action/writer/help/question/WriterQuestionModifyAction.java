package com.forest.action.writer.help.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.QuestionVO;
import com.forest.service.QuestionService;

public class WriterQuestionModifyAction implements Action{
	
	private QuestionService questionservice;

	public void setQuestionservice(QuestionService questionservice) {
		this.questionservice = questionservice;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url ="redirect:/writer/help/question/detail.do";
		
		QuestionVO question= new QuestionVO();
		
		int q_num = Integer.parseInt(request.getParameter("q_num"));
		String q_title = request.getParameter("q_title");
		String q_content = request.getParameter("q_content");
		
		question.setQ_num(q_num);
		question.setQ_title(q_title);
		question.setQ_content(q_content);

		
		questionservice.modify(question);
		
		url+="?q_num="+q_num;
		
		return url;

	}
}
