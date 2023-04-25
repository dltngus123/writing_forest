package com.forest.action.common.fund;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.FundingVO;
import com.forest.dto.MemberVO;
import com.forest.service.FundingService;
import com.forest.utils.FileDownloadResolver;
import com.forest.utils.GetUploadPath;



public class FundGetImgAction implements Action{
	private FundingService fundingService;
	public void setSearchFundingService(FundingService fundingService) {
		this.fundingService=fundingService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		int fun_num = Integer.parseInt(request.getParameter("fun_num"));
		FundingVO fund = fundingService.getFunding(fun_num);
		
		String fileName = fund.getFun_img();		
		String savedPath = GetUploadPath.getUploadPath("funding.picture.upload");	
		
		FileDownloadResolver.sendFile(fileName,savedPath,request,response);
		
		return url;
	}

}
