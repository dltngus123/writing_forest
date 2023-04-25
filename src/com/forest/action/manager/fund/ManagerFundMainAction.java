package com.forest.action.manager.fund;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.SearchCriteria;
import com.forest.action.Action;
import com.forest.service.FundingService;

public class ManagerFundMainAction implements Action {
	
	FundingService fundingService;
	public void setFundingService(FundingService fundingService) {
		this.fundingService = fundingService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/manager/fund/main.jsp";
		
		String searchType = request.getParameter("searchType");
		String keyword=request.getParameter("keyword");
		String perPageNumParam=request.getParameter("perPageNum");
		String pageParam=request.getParameter("page");
		String orderBy=request.getParameter("orderBy");
		
		if(perPageNumParam==null||perPageNumParam.isEmpty())perPageNumParam="10";
		if(pageParam==null||pageParam.isEmpty())pageParam="1";
		if(searchType==null) searchType="";
		if(keyword==null) keyword="";
		if(orderBy==null) orderBy="";
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		cri.setKeyword(orderBy);
		
		try {
			Map<String,Object> dataMap = fundingService.getFundingList(cri);
			request.setAttribute("dataMap", dataMap);
			return url;			
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		}
	}

}
