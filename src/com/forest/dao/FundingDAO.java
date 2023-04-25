package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import com.forest.SearchCriteria;
import com.forest.dto.FundingVO;

public interface FundingDAO {
	
	List<FundingVO> selectSearchFundingList(SearchCriteria cri) throws SQLException;

	int selectSearchFundingListCount(SearchCriteria cri) throws SQLException;

	FundingVO selectFundingByFun_num(int fun_num)throws SQLException;
	
	void increaseFun_view(int fun_num)throws SQLException;
	
	int selectFundingSequenceNextValue()throws SQLException;
	
	void insertFunding(FundingVO funding)throws SQLException;
	
	void updateFunding(FundingVO funding)throws SQLException;

	void enabledFunding(FundingVO funding)throws SQLException;
	
	void deleteFunding(int fun_num)throws SQLException;

}
