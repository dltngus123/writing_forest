package com.forest.action.summernote;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.utils.FileDownloadResolver;
import com.forest.utils.GetUploadPath;


public class SummernoteGetImgAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		// 파일명		
		String fileName = request.getParameter("fileName");
		
		// 실제 저장 경로를 설정.
		String savePath = GetUploadPath.getUploadPath("summernote.img");
		
		//파일 내보내기
		FileDownloadResolver.sendFile(fileName, savePath, request, response);
		
		return url;
	}

}
