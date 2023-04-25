package com.forest.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.forest.PageMaker;
import com.forest.SearchCriteria;
import com.forest.dao.ReplyDAO;
import com.forest.dto.ReplyVO;

public class ReplyServiceImpl implements ReplyService{
   
   private ReplyDAO replyDAO;

   public void setReplyDAO(ReplyDAO replyDAO) {
      this.replyDAO = replyDAO;
   }

   @Override
   public Map<String, Object> getReplyWritingList(int writing_num, SearchCriteria cri) throws SQLException {
      Map<String ,Object>dataMap = new HashMap<String,Object>();
      
      List<ReplyVO> replyList = replyDAO.selectReplyWritingList(writing_num, cri);
      
      int count = replyDAO.countWritingReply(writing_num);
      
      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);
      pageMaker.setTotalCount(count);
      
      dataMap.put("replyList", replyList);
      dataMap.put("pageMaker", pageMaker);
      
      return dataMap;
   }

   @Override
   public Map<String, Object> getReplyfundingList(int fun_num, SearchCriteria cri) throws SQLException {
      Map<String ,Object>dataMap = new HashMap<String,Object>();
      
      List<ReplyVO> replyList = replyDAO.selectReplyfundingList(fun_num, cri);
      
      int count = replyDAO.countFundingReply(fun_num);
      PageMaker pageMaker = new PageMaker();
      pageMaker.setCri(cri);
      pageMaker.setTotalCount(count);
      
      dataMap.put("replyList", replyList);
      dataMap.put("pageMaker", pageMaker);
      
      return dataMap;
   }

   @Override
   public int getReplyWritingListCount(int writing_num) throws SQLException {
      int count = replyDAO.countWritingReply(writing_num);
      return count;
   }

   @Override
   public int getReplyFundingListCount(int fun_num) throws SQLException {
      int count = replyDAO.countFundingReply(fun_num);
      return count;
   }

   @Override
   public void registWritingReply(ReplyVO reply) throws SQLException {
      int reply_num = replyDAO.selectReplySeqNextValue();
      reply.setReply_num(reply_num);
      
      replyDAO.insertWritingReply(reply);
      
   }

   @Override
   public void registFundingReply(ReplyVO reply) throws SQLException {
      int reply_num = replyDAO.selectReplySeqNextValue();
      reply.setReply_num(reply_num);
      
      replyDAO.insertFundingReply(reply);
      
   }

   @Override
   public void modifyReply(ReplyVO reply) throws SQLException {
      replyDAO.updateReply(reply);
      
   }

   @Override
   public void removeReply(int reply_num) throws SQLException {
      replyDAO.deleteReply(reply_num);
      
   }

}