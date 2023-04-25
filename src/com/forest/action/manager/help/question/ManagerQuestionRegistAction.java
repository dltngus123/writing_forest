package com.forest.action.manager.help.question;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.QuestionVO;
import com.forest.service.QuestionService;

public class ManagerQuestionRegistAction implements Action {
	
	private QuestionService questionservice;

	public void setQuestionservice(QuestionService questionservice) {
		this.questionservice = questionservice;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url ="redirect:/manager/help/question/detail.do";
		
		QuestionVO question= new QuestionVO();
		
		int q_num = Integer.parseInt(request.getParameter("q_num"));
		String q_answer = request.getParameter("q_answer");
		String manager_id = request.getParameter("manager_id");
		
		question.setQ_num(q_num);
		question.setManager_id(manager_id);
		question.setQ_answer(q_answer);

		
		questionservice.managermodify(question);
		
		url+="?q_num="+q_num;
		
		return url;
	}
}
