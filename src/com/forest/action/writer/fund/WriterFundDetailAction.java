package com.forest.action.writer.fund;

import java.sql.SQLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.SearchCriteria;
import com.forest.action.Action;
import com.forest.dto.FundingVO;
import com.forest.service.FundingService;
import com.forest.service.PaymentService;
import com.forest.service.ReplyService;

public class WriterFundDetailAction implements Action {

	private FundingService fundingService;

	public void setFundingService(FundingService fundingService) {
		this.fundingService = fundingService;
	}

	private ReplyService replyService;

	public void setReplyService(ReplyService replyService) {
		this.replyService = replyService;
	}

	private PaymentService paymentService;

	public void setPaymentService(PaymentService paymentService) {
		this.paymentService = paymentService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url = "/WEB-INF/views/writer/fund/detail.jsp";

		int fun_num = Integer.parseInt(request.getParameter("fun_num"));

		String from = request.getParameter("from");

		FundingVO funding = null;
		if (from != null && from.equals("list")) {
			funding = fundingService.getFunding(fun_num);
			url = "redirect:/writer/fund/detail.do?fun_num=" + fun_num;
			return url;
		} else {
			funding = fundingService.getFundingForModify(fun_num);
			request.setAttribute("funding", funding);

			int totalMember = paymentService.getPaymentMemberCount(fun_num);

			request.setAttribute("totalMember", totalMember);

			int totalMoney = paymentService.getPaymentTotalMoney(fun_num);

			request.setAttribute("totalMoney", totalMoney);

			String searchType = request.getParameter("searchType");
			String keyword = request.getParameter("keyword");
			String perPageNumParam = request.getParameter("perPageNum");
			String pageParam = request.getParameter("page");

			if (perPageNumParam == null || perPageNumParam.isEmpty())
				perPageNumParam = "10";
			if (pageParam == null || pageParam.isEmpty())
				pageParam = "1";
			if (searchType == null)
				searchType = "";
			if (keyword == null)
				keyword = "";

			SearchCriteria cri = new SearchCriteria();
			cri.setPage(pageParam);
			cri.setPerPageNum(perPageNumParam);
			cri.setSearchType(searchType);
			cri.setKeyword(keyword);

			Map<String, Object> dataMap = replyService.getReplyfundingList(fun_num, cri);

			request.setAttribute("dataMap", dataMap);

			return url;

		}
	}

}
