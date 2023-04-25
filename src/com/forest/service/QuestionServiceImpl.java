package com.forest.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.forest.PageMaker;
import com.forest.SearchCriteria;
import com.forest.dao.QuestionDAO;
import com.forest.dto.QuestionVO;

public class QuestionServiceImpl implements QuestionService{

	private QuestionDAO questionDAO;
	
	public void setQuestionDAO(QuestionDAO questionDAO) {
		this.questionDAO = questionDAO;
	}

	@Override
	public Map<String, Object> getQuestionList(SearchCriteria cri) throws SQLException {
	Map<String , Object> dataMap = new HashMap<String , Object>();
		
		List<QuestionVO> questionList = questionDAO.selectSearchQuestionList(cri);
		
		int totalCount = questionDAO.selectSearchQuestionListCount(cri);
		
		PageMaker pagemaker= new PageMaker();
		pagemaker.setCri(cri);
		pagemaker.setTotalCount(totalCount);
		
		dataMap.put("questionList", questionList);
		dataMap.put("pagemaker",pagemaker);
		return dataMap;
	}

	
	@Override
	public QuestionVO getQuestion(int q_num) throws SQLException {
		QuestionVO question = questionDAO.selectQuestionByq_num(q_num);
		return question;
	}

	@Override
	public QuestionVO getQuestionForModify(int q_num) throws SQLException {
		QuestionVO question = questionDAO.selectQuestionByq_num(q_num);
		return question;
	}

	@Override
	public void regist(QuestionVO question) throws SQLException {
		int q_num = questionDAO.selectQuestionSequenceNextValue();
		question.setQ_num(q_num);
		questionDAO.insertQuestion(question);
		
	}

	@Override
	public void modify(QuestionVO question) throws SQLException {
		questionDAO.updateQuestion(question);
		
	}
	@Override
	public void managermodify(QuestionVO question) throws SQLException {
		questionDAO.updateQuestionAnswer(question);
		
	}

	@Override
	public void remove(int q_num) throws SQLException {
		questionDAO.deleteQuestion(q_num);
		
	}

	

	
}
