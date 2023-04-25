package com.forest.action.writer.help.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.QuestionVO;
import com.forest.service.QuestionService;

public class WriterQuestionDetailAction implements Action{

	private QuestionService questionservice;
	
	public void setQuestionservice(QuestionService questionservice) {
		this.questionservice = questionservice;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/help/question/detail.jsp";
		
		int q_num=Integer.parseInt(request.getParameter("q_num"));
		String from = request.getParameter("from");
		
		QuestionVO question= null;
		
		if (from!= null && from.equals("list")) {
			question = questionservice.getQuestion(q_num);
			url="redirect:/writer/help/question/detail.do?q_num="+q_num;
		}else {
			question = questionservice.getQuestionForModify(q_num);
			
		}
		request.setAttribute("question", question);
		return url;
	}

}
