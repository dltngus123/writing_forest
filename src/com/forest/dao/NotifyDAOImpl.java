package com.forest.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.forest.SearchCriteria;
import com.forest.dto.NotifyVO;


public class NotifyDAOImpl implements NotifyDAO {

	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<NotifyVO> selectSearchNotifyList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		int startRow = cri.getStartRowNum();
		int endRow = startRow + cri.getPerPageNum() - 1;

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		try {
			List<NotifyVO> notifyList = session.selectList("Notify-Mapper.selectSearchNotifyList", dataParam);
			return notifyList;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public int selectSearchNotifyListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Notify-Mapper.selectSearchNotifyListCount", cri);
			return count;

		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public NotifyVO selectNotifyByNotify_num(int notify_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			NotifyVO notify = session.selectOne("Notify-Mapper.selectNotifyByNotify_num", notify_num);
			return notify;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public int selectNotifySequenceNextValue() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			int seq_num = session.selectOne("Notify-Mapper.selectNotifySequenceNextValue");
			return seq_num;
		} finally {
			if (session != null)
				session.close();
		}
	}
	
	@Override
	public void answerNotify(int notify_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Notify-Mapper.answerNotify", notify_num);
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void insertNotify(NotifyVO notify) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.insert("Notify-Mapper.insertNotify", notify);
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void updateNotify(NotifyVO notify) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Notify-Mapper.updateNotify", notify);
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void deleteNotify(int notify_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.delete("Notify-Mapper.deleteNotify", notify_num);
		} finally {
			if (session != null)
				session.close();
		}
	}
}