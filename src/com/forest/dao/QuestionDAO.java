package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import com.forest.SearchCriteria;
import com.forest.dto.QuestionVO;

public interface QuestionDAO {

	//질문리스트
	List<QuestionVO> selectSearchQuestionList(SearchCriteria cri)throws SQLException;
	
	int selectSearchQuestionListCount(SearchCriteria cri)throws SQLException;
	//상세보기
	QuestionVO selectQuestionByq_num(int q_num)throws SQLException;
	
	int selectQuestionSequenceNextValue() throws SQLException;
	//등록
	void insertQuestion(QuestionVO question)throws SQLException;
	//수정
	void updateQuestion(QuestionVO question)throws SQLException;
	
	void updateQuestionAnswer(QuestionVO question)throws SQLException;
	//삭제
	void deleteQuestion(int q_num)throws SQLException;
}
