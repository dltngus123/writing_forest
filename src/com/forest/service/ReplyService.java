package com.forest.service;

import java.sql.SQLException;
import java.util.Map;

import com.forest.SearchCriteria;
import com.forest.dto.ReplyVO;

public interface ReplyService {
   
   Map<String,Object>getReplyWritingList(int writing_num,SearchCriteria cri)throws SQLException;
   
   Map<String,Object>getReplyfundingList(int fun_num,SearchCriteria cri)throws SQLException;
   
   int getReplyWritingListCount(int writing_num)throws SQLException;
   
   int getReplyFundingListCount(int fun_num)throws SQLException;
   
   void registWritingReply(ReplyVO reply)throws SQLException;
   
   void registFundingReply(ReplyVO reply)throws SQLException;
   
   void modifyReply(ReplyVO reply)throws SQLException;
   
   void removeReply(int reply_num)throws SQLException;

}