package com.forest.action.writer.help.question;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.SearchCriteria;
import com.forest.action.Action;
import com.forest.service.QuestionService;

public class WriterQuestionListAction implements Action {
	

	private QuestionService questionservice;
	public void setQuestionservice(QuestionService questionservice) {
		this.questionservice = questionservice;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/help/question/list.jsp";
		
		String member_id=request.getParameter("member_id");
		
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNumParam = request.getParameter("perPageNum");
		String pageParam = request.getParameter("page");
		
		if(perPageNumParam == null || perPageNumParam.isEmpty())perPageNumParam="10";
		if(pageParam == null || pageParam.isEmpty())pageParam="1";
		if(searchType==null) searchType="i";
		if(keyword==null) keyword=member_id;
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType("i");
		cri.setKeyword(member_id);
		
		try {
			//Map<String , Object> Map = new HashMap<String , Object>();
			//처리
			Map<String, Object> dataMap = questionservice.getQuestionList(cri);
			
			request.setAttribute("dataMap", dataMap);
		
			
			return url;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		}
	}

}
