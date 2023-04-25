package com.forest.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.forest.SearchCriteria;
import com.forest.dto.FundingVO;

public class FundingDAOImpl implements FundingDAO {
	
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<FundingVO> selectSearchFundingList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		int startRow = cri.getStartRowNum();
		int endRow = startRow + cri.getPerPageNum() - 1;

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		dataParam.put("orderBy", cri.getOrderBy());
		try {
			List<FundingVO> fundingList = session.selectList("Funding-Mapper.selectSearchFundingList", dataParam);
			return fundingList;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public int selectSearchFundingListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		try {
			int count = session.selectOne("Funding-Mapper.selectSearchFundingListCount", cri);
			return count;

		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public FundingVO selectFundingByFun_num(int fun_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			FundingVO funding = session.selectOne("Funding-Mapper.selectFundingByFun_num", fun_num);
			return funding;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void increaseFun_view(int fun_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Funding-Mapper.increaseFun_view", fun_num);
		} finally {
			if (session != null)
				session.close();
		}
		
	}

	@Override
	public int selectFundingSequenceNextValue() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			int seq_num = session.selectOne("Funding-Mapper.selectFundingSequenceNextValue");
			return seq_num;
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void insertFunding(FundingVO funding) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.insert("Funding-Mapper.insertFunding", funding);
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void enabledFunding(FundingVO funding) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Funding-Mapper.enabledFunding", funding);
		} finally {
			if (session != null)
				session.close();
		}		
	}
	@Override
	public void updateFunding(FundingVO funding) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.update("Funding-Mapper.updateFunding", funding);
		} finally {
			if (session != null)
				session.close();
		}
	}

	@Override
	public void deleteFunding(int fun_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();

		try {
			session.delete("Funding-Mapper.deleteFunding", fun_num);
		} finally {
			if (session != null)
				session.close();
		}
	}
}
