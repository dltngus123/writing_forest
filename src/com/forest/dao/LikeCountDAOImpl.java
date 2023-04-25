package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.forest.dto.LikeCountVO;

public class LikeCountDAOImpl implements LikeCountDAO {
	
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory=sqlSessionFactory;
	}

	@Override
	public List<LikeCountVO> selectSearchLikeCountList(int writing_num) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			
			List<LikeCountVO> likeList=session.selectList("LikeCount-Mapper.selectSearchLikeCountList",writing_num);
			return likeList;
			}finally {
				session.close();
			}
		
	}

	@Override
	public LikeCountVO selectLikeCountByLikeCount_num(int like_num) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			
			LikeCountVO likeCount=session.selectOne("LikeCount-Mapper.selectLikeCountByLikeCount_num",like_num);
			return likeCount;
			}finally {
				session.close();
			}
	}

	@Override
	public int selectLikeCountSequenceNextValue() throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			
			int seq_result=session.selectOne("LikeCount-Mapper.selectLikeCountSequenceNextValue");
			return seq_result;
			}finally {
				session.close();
			}
	}


	@Override
	public void insertLikeCount(LikeCountVO likeCount) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			
			session.update("LikeCount-Mapper.insertLike_Count",likeCount);
			
			}finally {
				session.close();
			}
		
	}

	@Override
	public void deleteLikeCount(int like_num) throws SQLException {
		SqlSession session=sqlSessionFactory.openSession();
		try {
			
			session.update("LikeCount-Mapper.deleteLike_Count",like_num);
			
			}finally {
				session.close();
			}

	}
}
