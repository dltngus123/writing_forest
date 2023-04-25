package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import com.forest.SearchCriteria;
import com.forest.dto.WritingVO;

public interface WritingDAO {

	
  List<WritingVO> selectSearchWritingList(SearchCriteria cri)throws SQLException;
  
  int selectSearchWritingListCount(SearchCriteria cri)throws SQLException;
  
  WritingVO selectWritingByWriting_num(int Writing_num) throws SQLException;
  
  void increaseViewCount(int writing_num) throws SQLException;
  
  int selectWritingSequenceNextValue() throws SQLException;
  
  void insertWriting(WritingVO writing) throws SQLException;
  
  void updateWriting(WritingVO writing) throws SQLException;
  
  void deleteWriting(int writing_num) throws SQLException;
}
