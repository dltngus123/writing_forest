package com.forest.action.writer.fund;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.FundingVO;
import com.forest.service.FundingService;

public class WriterFundRegistAction implements Action {
	
	private FundingService fundingService;
	public void setFundingService(FundingService fundingService) {
		this.fundingService = fundingService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/writer/fund/regist_success.jsp";
		
		FundingVO funding = new FundingVO();
		
		funding.setFun_content(request.getParameter("fun_content"));
		funding.setFun_img(request.getParameter("picture"));
		funding.setFun_title(request.getParameter("fun_title"));
		funding.setFun_stitle(request.getParameter("fun_stitle"));
		funding.setFun_money(Integer.parseInt(request.getParameter("fun_money")));
		funding.setMember_id(request.getParameter("member_id"));
		
		fundingService.regist(funding);
		
		return url;
	}

}
