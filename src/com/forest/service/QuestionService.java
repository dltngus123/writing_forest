package com.forest.service;

import java.sql.SQLException;
import java.util.Map;

import com.forest.SearchCriteria;
import com.forest.dto.QuestionVO;

public interface QuestionService {
	
	//목록조회
	Map<String, Object> getQuestionList(SearchCriteria cri)throws SQLException;
	
	//상세보기
	QuestionVO getQuestion(int q_num)throws SQLException;
	//상세보기
	QuestionVO getQuestionForModify (int q_num)throws SQLException;
	//등록
	void regist(QuestionVO question)throws SQLException;
	//수정
	void modify(QuestionVO question)throws SQLException;
	
	void managermodify(QuestionVO question)throws SQLException;
	//삭제
	void remove(int q_num)throws SQLException;
}
