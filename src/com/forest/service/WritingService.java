package com.forest.service;

import java.sql.SQLException;
import java.util.Map;

import com.forest.SearchCriteria;
import com.forest.dto.WritingVO;




public interface WritingService {

	Map<String, Object> getWritingList(SearchCriteria cri) 
			throws SQLException;

// 상세보기
WritingVO getWriting(int writing_num) throws SQLException;

// 수정화면 상세
WritingVO getWritingForModify(int wirting_num) throws SQLException;

// 등록
void regist(WritingVO writing) throws SQLException;

// 수정
void modify(WritingVO writing) throws SQLException;

// 삭제
void remove(int writing_num) throws SQLException;
	
}
