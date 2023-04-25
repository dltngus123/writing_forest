package com.forest.action.writer.my;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.SearchCriteria;
import com.forest.action.Action;
import com.forest.service.FundingService;

public class WriterMyFundAction implements Action{
	
	private FundingService fundingservice;

	public void setFundingservice(FundingService fundingservice) {
		this.fundingservice = fundingservice;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/my/feedfund.jsp";
		
		String searchType = request.getParameter("searchType");
		String keyword=request.getParameter("keyword");
		String perPageNumParam=request.getParameter("perPageNum");
		String pageParam=request.getParameter("page");
		
		if(perPageNumParam==null||perPageNumParam.isEmpty())perPageNumParam="10";
		if(pageParam==null||pageParam.isEmpty())pageParam="1";
		if(searchType==null) searchType="";
		if(keyword==null) keyword="";
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		
		try {
			Map<String,Object> dataMap = fundingservice.getFundingList(cri);
			request.setAttribute("dataMap", dataMap);
			return url;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		}
	}
}
