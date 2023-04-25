package com.forest.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.forest.SearchCriteria;
import com.forest.dto.WritingVO;

public class WritingDAOImpl implements WritingDAO{

	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory=sqlSessionFactory;
	}
	
	
	@Override
	public List<WritingVO> selectSearchWritingList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		int startRow = cri.getStartRowNum();
		int endRow = startRow + cri.getPerPageNum() - 1;

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());

		try {
			List<WritingVO> writingList = session.selectList("Writing-Mapper.selectSearchWritingList", dataParam);

			return writingList;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public int selectSearchWritingListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Writing-Mapper.selectSearchWritingListCount", cri);
			return count;
		} finally {
			if (session != null)session.close();
		}
	}

	

	@Override
	public WritingVO selectWritingByWriting_num(int Writing_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			WritingVO writing = session.selectOne("Writing-Mapper.selectWritingByWriting_num",Writing_num );

			return writing;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void increaseViewCount(int writing_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Writing-Mapper.increaseViewCount", writing_num);
		} finally {
			if (session != null)
				session.close();
		}

		
	}



	@Override
	public int selectWritingSequenceNextValue() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			int seq_num = session.selectOne("Writing-Mapper.selectWritingSequenceNextValue");
			return seq_num;
		} finally {
			if (session != null)
				session.close();
		}
		
	}

	@Override
	public void insertWriting(WritingVO writing) throws SQLException {
		SqlSession session =sqlSessionFactory.openSession();
		
		try {
			session.update("Writing-Mapper.insertWriting",writing);
		}finally {
			if(session!=null)
				session.close();
		}
		
	}

	@Override
	public void updateWriting(WritingVO writing) throws SQLException {
		SqlSession session =sqlSessionFactory.openSession();
		
		try {
			session.update("Writing-Mapper.updateWriting",writing);
		}finally {
			if(session!=null)
				session.close();
		}
		
	}

	@Override
	public void deleteWriting(int writing_num) throws SQLException {
			SqlSession session =sqlSessionFactory.openSession();
		
		try {
			session.update("Writing-Mapper.deleteWriting",writing_num);
		}finally {
			if(session!=null)
				session.close();
		}
		
	}

}
