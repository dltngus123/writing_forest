package com.forest.action.writer.write;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.SearchCriteria;
import com.forest.action.Action;
import com.forest.dto.WritingVO;
import com.forest.service.WritingService;

public class WriterWriteListAction implements Action {

	private WritingService writingService;
	
	public void setWritingService(WritingService writingService) {
		this.writingService=writingService;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/write/list.jsp";
		
		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNumParam = request.getParameter("perPageNum");
		String pageParam=request.getParameter("page");
		
		if(perPageNumParam==null || perPageNumParam.isEmpty())perPageNumParam="20";
		if(pageParam==null || pageParam.isEmpty())pageParam="1";
		if(searchType==null) searchType="";
		if(keyword==null) keyword="";
		
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		
		
		
		try {
			// 처리
			Map<String, Object> dataMap = writingService.getWritingList(cri);
		
			
			
			request.setAttribute("dataMap", dataMap);

			return url;
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		

		
		
		
		
		}
		
		
		
	}

}
