package com.forest.service;

import java.sql.SQLException;
import java.util.List;

import com.forest.dto.LikeCountVO;

public interface LikeCountService {

	List<LikeCountVO> getLikeListByWriting_num(int writing_num) throws SQLException;
	
	LikeCountVO getLikeCountByLike_num(int like_num) throws SQLException;
	
	void registLike_count(LikeCountVO likecount) throws SQLException;
	
	void removeLike_count(int like_num)throws SQLException;
	
	
	
	
	
}
