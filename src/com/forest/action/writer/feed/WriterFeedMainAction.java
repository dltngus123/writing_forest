package com.forest.action.writer.feed;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.SearchCriteria;
import com.forest.action.Action;
import com.forest.dto.FundingVO;
import com.forest.dto.MemberVO;
import com.forest.service.MemberService;
import com.forest.service.WritingService;

public class WriterFeedMainAction implements Action {
	
	private MemberService memberservice;
	
	public void setMemberservice(MemberService memberservice) {
		this.memberservice = memberservice;
	}
	
	private WritingService writingservice;

	public void setWritingservice(WritingService writingservice) {
		this.writingservice = writingservice;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/feed/main.jsp";
		
		String member_id=request.getParameter("member_id");
		String from = request.getParameter("from");

        MemberVO member= null;
        if (from != null && from.equals("list")) {
            member = memberservice.getMember(member_id);
            url = "redirect:/writer/feed/main.do?member_id=" + member_id;
        } else {
            member = memberservice.getMember(member_id);
        }
        request.setAttribute("member", member);
		
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
			Map<String,Object> dataMap = writingservice.getWritingList(cri);
			request.setAttribute("dataMap", dataMap);
			return url;
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		}
	}

}
