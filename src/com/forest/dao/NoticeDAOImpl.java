package com.forest.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.forest.SearchCriteria;
import com.forest.dto.NoticeVO;

public class NoticeDAOImpl implements NoticeDAO{
	
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<NoticeVO> selectSearchNoticeList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		int startRow = cri.getStartRowNum();
		int endRow = startRow+cri.getPerPageNum()-1;
		
		Map<String, Object>dataparam = new HashMap<String, Object>();
		dataparam.put("searchType", cri.getSearchType());
		dataparam.put("keyword", cri.getKeyword());
		dataparam.put("startRow", startRow);
		dataparam.put("endRow", endRow);
		
		try {
			List<NoticeVO> noticeList = session.selectList("Notice-Mapper.selectSearchNoticeList",dataparam);
			return noticeList;
		}finally {
			if(session!=null)session.close();
		}
		
	}
	
	

	@Override
	public NoticeVO selectNoticeBynotice_num(int notice_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			NoticeVO notice = session.selectOne("Notice-Mapper.selectNoticeBynotice_num",notice_num);
			return notice;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void increasenotice_view(int notice_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Notice-Mapper.increasenotice_view",notice_num);
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void insertNotice(NoticeVO notice) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Notice-Mapper.insertNotice",notice);
			
		}finally {
			if(session!=null)session.close();
		}
		
	}

	@Override
	public void updateNotice(NoticeVO notice) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Notice-Mapper.updateNotice",notice);
			
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void deleteNotice(int notice_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			
			session.update("Notice-Mapper.deleteNotice",notice_num);
		}finally {
			if(session!=null)session.close();
		}
		
	}

	@Override
	public int selectSearchNoticeListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int count = session.selectOne("Notice-Mapper.selectSearchNoticeListCount",cri);
			return count;
		}finally {
			if(session!=null)session.close();
		}
		
	}

	@Override
	public int selectNoticeSequenceNextValue() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int seq_num = session.selectOne("Notice-Mapper.selectNoticeSequenceNextValue");
			
			return seq_num;
		}finally {
			if(session!=null)session.close();
		}
	}



}
