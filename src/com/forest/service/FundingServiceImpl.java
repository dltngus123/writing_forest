package com.forest.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.forest.PageMaker;
import com.forest.SearchCriteria;
import com.forest.dao.FundingDAO;
import com.forest.dto.FundingVO;

public class FundingServiceImpl implements FundingService {
	
	private FundingDAO fundingDAO;
	public void setFundingDAO(FundingDAO fundingDAO) {
		this.fundingDAO = fundingDAO;
	}

	@Override
	public Map<String, Object> getFundingList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<FundingVO> fundingList = fundingDAO.selectSearchFundingList(cri);

		int totalCount=fundingDAO.selectSearchFundingListCount(cri);

		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("fundingList", fundingList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public FundingVO getFunding(int fun_num) throws SQLException {
		FundingVO board = fundingDAO.selectFundingByFun_num(fun_num);
		fundingDAO.increaseFun_view(fun_num);
		return board;
	}

	@Override
	public FundingVO getFundingForModify(int fun_num) throws SQLException {
		FundingVO board = fundingDAO.selectFundingByFun_num(fun_num);
		return board;
	}

	@Override
	public void regist(FundingVO funding) throws SQLException {
		int fun_num = fundingDAO.selectFundingSequenceNextValue();
		funding.setFun_num(fun_num);
		fundingDAO.insertFunding(funding);
	}

	@Override
	public void modify(FundingVO funding) throws SQLException {
		fundingDAO.updateFunding(funding);
	}

	@Override
	public void remove(int fun_num) throws SQLException {
		fundingDAO.deleteFunding(fun_num);
	}

	@Override
	public void enabled(FundingVO funding) throws SQLException {
		fundingDAO.enabledFunding(funding);
	}

}
