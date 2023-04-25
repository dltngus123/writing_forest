package com.forest.action.writer.fund;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.ReplyVO;
import com.forest.service.ReplyService;

public class WriterFundReplyRegistAction implements Action{
   
   private ReplyService replyservice;

   public void setReplyservice(ReplyService replyservice) {
      this.replyservice = replyservice;
   }

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      String url="redirect:/writer/fund/detail.do?fun_num=";
      
       int fun_num = Integer.parseInt(request.getParameter("fun_num"));
       String member_id=request.getParameter("member_id");
       
      ReplyVO reply= new ReplyVO();
      reply.setReply_content(request.getParameter("reply_content"));
      reply.setMember_id(request.getParameter("member_id"));
      reply.setFun_num(Integer.parseInt(request.getParameter("fun_num")));
      
      replyservice.registFundingReply(reply);
      
      return url+=fun_num+"&member_id="+member_id;
   }

}