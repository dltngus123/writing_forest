package com.forest.action.manager.fund;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.FundingVO;
import com.forest.service.FundingService;

public class ManagerFundDetailAction implements Action {

	FundingService fundingService;
	public void setFundingService(FundingService fundingService) {
		this.fundingService = fundingService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url="/WEB-INF/views/manager/fund/detail.jsp";
		
		int fun_num=Integer.parseInt(request.getParameter("fun_num"));
		String from = request.getParameter("from");
		
		FundingVO funding = null;
		
			if(from!=null && from.equals("list")) {
				funding=fundingService.getFunding(fun_num);
				url="redirect:/manager/fund/detail.do?fun_num="+fun_num;
			}else {
			funding=fundingService.getFundingForModify(fun_num);
			}
			request.setAttribute("funding", funding);
		return url;
	}

}
