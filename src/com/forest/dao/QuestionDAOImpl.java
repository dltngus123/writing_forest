package com.forest.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.forest.SearchCriteria;
import com.forest.dto.QuestionVO;

public class QuestionDAOImpl implements QuestionDAO{
	
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<QuestionVO> selectSearchQuestionList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		int startRow = cri.getStartRowNum();
		int endRow = startRow+cri.getPerPageNum()-1;
		
		Map<String, Object>dataparam = new HashMap<String, Object>();
		dataparam.put("searchType", cri.getSearchType());
		dataparam.put("keyword", cri.getKeyword());
		dataparam.put("startRow", startRow);
		dataparam.put("endRow", endRow);
		
		try {
			List<QuestionVO> questionList = session.selectList("Question-Mapper.selectSearchQuestionList",dataparam);
			return questionList;
		}finally {
			if(session!=null)session.close();
		}
	}

	
	@Override
	public QuestionVO selectQuestionByq_num(int q_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			QuestionVO question= session.selectOne("Question-Mapper.selectQuestionByq_num",q_num);
			return question;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void insertQuestion(QuestionVO question) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Question-Mapper.insertQuestion",question);
			
		}finally {
			if(session!=null)session.close();
		}
		
	}

	@Override
	public void updateQuestion(QuestionVO question) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Question-Mapper.updateQuestion",question);
			
		}finally {
			if(session!=null)session.close();
		}
	}
	
	@Override
	public void updateQuestionAnswer(QuestionVO question) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Question-Mapper.updateQuestionAnswer",question);
			
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void deleteQuestion(int q_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Question-Mapper.deleteQuestion",q_num);
			
		}finally {
			if(session!=null)session.close();
		}
		
	}

	@Override
	public int selectSearchQuestionListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int count = session.selectOne("Question-Mapper.selectSearchQuestionListCount",cri);
			return count;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public int selectQuestionSequenceNextValue() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int seq_num = session.selectOne("Question-Mapper.selectQuestionSequenceNextValue");
			
			return seq_num;
		}finally {
			if(session!=null)session.close();
		}
	}

	

}
