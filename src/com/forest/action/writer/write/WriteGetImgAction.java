package com.forest.action.writer.write;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.WritingVO;
import com.forest.service.WritingService;
import com.forest.utils.FileDownloadResolver;
import com.forest.utils.GetUploadPath;



public class WriteGetImgAction implements Action{
	private WritingService writingService;
	public void setWritingService(WritingService writingService) {
		this.writingService=writingService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		int writing_num = Integer.parseInt(request.getParameter("writing_num"));
		WritingVO writing = writingService.getWriting(writing_num);
		
		String fileName = writing.getWriting_himg();
		String savedPath = GetUploadPath.getUploadPath("write.img");	
		FileDownloadResolver.sendFile(fileName,savedPath,request,response);
		
		return url;
	}

}
