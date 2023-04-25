package com.forest.action.likecount;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.LikeCountVO;
import com.forest.service.LikeCountService;


public class CountLikeAction implements Action {

	private LikeCountService likecountService;
	
	public void setLikeCountService(LikeCountService likecountService) {
		this.likecountService=likecountService;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int writing_num= 0;//Integer.parseInt(request.getParameter("writing_num"));
		int likecount=0;
		
		List<LikeCountVO> likeList=likecountService.getLikeListByWriting_num(writing_num);
		System.out.println(writing_num);
		PrintWriter out =response.getWriter();
		if(likeList == null) {
		out.print(likecount);
			out.close();
		}else {
			likecount =likeList.size();
			out.print(likecount);
			out.close();
        }
		
		return null;
	}

}
