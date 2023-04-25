package com.forest.action.writer;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.SearchCriteria;
import com.forest.action.Action;
import com.forest.service.MemberService;
import com.forest.service.WritingService;

public class WriterMainAction implements Action {
	
	private MemberService memberservice;
	public void setMemberservice(MemberService memberservice) {
		this.memberservice = memberservice;
	}
	private WritingService writingService;
	public void setWritingService(WritingService writingService) {
		this.writingService = writingService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/main.jsp";

		String searchType = request.getParameter("searchType");
		String keyword = request.getParameter("keyword");
		String perPageNumParam = request.getParameter("perPageNum");
		String pageParam = request.getParameter("page");
		
		if(perPageNumParam == null || perPageNumParam.isEmpty())perPageNumParam="10";
		if(pageParam == null || pageParam.isEmpty())pageParam="1";
		if(searchType==null) searchType="";
		if(keyword==null) keyword="";
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(pageParam);
		cri.setPerPageNum(perPageNumParam);
		cri.setSearchType(searchType);
		cri.setKeyword(keyword);
		
		try {
			//Map<String , Object> Map = new HashMap<String , Object>();
			//처리
			Map<String, Object> dataMap = memberservice.getMemberList(cri);
			Map<String, Object> writeMap =writingService.getWritingList(cri);
			request.setAttribute("dataMap", dataMap);
			request.setAttribute("writeMap", writeMap);
			
			return url;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw e;
		}
		
	}


}
