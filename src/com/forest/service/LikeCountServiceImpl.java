package com.forest.service;

import java.sql.SQLException;
import java.util.List;

import com.forest.dao.LikeCountDAO;
import com.forest.dto.LikeCountVO;

public class LikeCountServiceImpl implements LikeCountService{

	private LikeCountDAO LikecountDAO;
	public void setLikeCountDAO(LikeCountDAO LikecountDAO) {
		this.LikecountDAO=LikecountDAO;
	}
	@Override
	public List<LikeCountVO> getLikeListByWriting_num(int writing_num) throws SQLException {
		List<LikeCountVO> likeList =LikecountDAO.selectSearchLikeCountList(writing_num);
		return likeList;
	}

	@Override
	public LikeCountVO getLikeCountByLike_num(int like_num) throws SQLException {
		LikeCountVO like= LikecountDAO.selectLikeCountByLikeCount_num(like_num);
		return like;
	}

	@Override
	public void registLike_count(LikeCountVO likecount) throws SQLException {
		int like_num=LikecountDAO.selectLikeCountSequenceNextValue();
		likecount.setLike_num(like_num);
		LikecountDAO.insertLikeCount(likecount);
		
	}

	@Override
	public void removeLike_count(int like_num) throws SQLException {
		LikecountDAO.deleteLikeCount(like_num);
		
	}

}
