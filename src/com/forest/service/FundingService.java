package com.forest.service;

import java.sql.SQLException;
import java.util.Map;

import com.forest.SearchCriteria;
import com.forest.dto.FundingVO;

public interface FundingService {
	

	Map<String, Object>getFundingList(SearchCriteria cri)throws SQLException;
	

	FundingVO getFunding(int fun_num)throws SQLException;
	

	FundingVO getFundingForModify(int fun_num)throws SQLException;
	

	void regist(FundingVO funding)throws SQLException;
	

	void modify(FundingVO funding)throws SQLException;
	
	void enabled(FundingVO funding)throws SQLException;
	
	void remove(int fun_num)throws SQLException;

}
