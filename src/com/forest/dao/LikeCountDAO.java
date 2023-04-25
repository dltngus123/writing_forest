package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import com.forest.SearchCriteria;
import com.forest.dto.LikeCountVO;

public interface LikeCountDAO {
	
	List<LikeCountVO> selectSearchLikeCountList(int writing_num) throws SQLException;

	LikeCountVO selectLikeCountByLikeCount_num(int like_num)throws SQLException;
	
	int selectLikeCountSequenceNextValue()throws SQLException;
	
	
	void insertLikeCount(LikeCountVO likeCount)throws SQLException;
	
	void deleteLikeCount(int like_num)throws SQLException;

}
