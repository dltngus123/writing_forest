package com.forest.action.common.fund;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.FundingVO;
import com.forest.service.FundingService;

public class CommonFundDetailAction implements Action {
	
	FundingService fundingService;
	public void setFundingService(FundingService fundingService) {
		this.fundingService = fundingService;
	}


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/common/fund/detail.jsp";
		
		int fun_num=Integer.parseInt(request.getParameter("fun_num"));
		String from = request.getParameter("from");
		
		FundingVO funding = null;
			if(from!=null && from.equals("list")) {
				funding=fundingService.getFunding(fun_num);
				url="redirect:/common/fund/detail.do?fun_num="+fun_num;
			}else {
			funding=fundingService.getFundingForModify(fun_num);
			}
			request.setAttribute("funding", funding);
		return url;
	}

}
