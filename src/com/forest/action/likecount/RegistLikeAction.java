package com.forest.action.likecount;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.forest.action.Action;
import com.forest.dto.LikeCountVO;
import com.forest.service.LikeCountService;

public class RegistLikeAction implements Action {
 
	
	private LikeCountService likecountService;
	public void setLikeCountService(LikeCountService likecountService) {
		this.likecountService=likecountService;
	}
		
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ObjectMapper mapper= new ObjectMapper();
		LikeCountVO likecount=mapper.readValue(request.getReader(),LikeCountVO.class);
		
	    likecountService.registLike_count(likecount);
	    
	    
	    
	    List<LikeCountVO> likeList=likecountService.getLikeListByWriting_num(likecount.getWriting_num());
		
	    PrintWriter out= response.getWriter();
	    out.print(likeList.size());
		
				
		return null;
	}

}
