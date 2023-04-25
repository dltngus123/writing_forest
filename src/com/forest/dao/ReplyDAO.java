package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import com.forest.SearchCriteria;
import com.forest.dto.ReplyVO;

public interface ReplyDAO {
   
   List<ReplyVO> selectReplyWritingList(int writing_num,SearchCriteria cri)throws SQLException;
   
   List<ReplyVO> selectReplyfundingList(int fun_num,SearchCriteria cri)throws SQLException;
   
   int selectReplySeqNextValue() throws SQLException;
   
   int countWritingReply(int writing_num)throws SQLException;
   
   int countFundingReply(int fun_num)throws SQLException;
   
   void insertWritingReply(ReplyVO reply)throws SQLException;
   
   void insertFundingReply(ReplyVO reply)throws SQLException;
   
   void updateReply(ReplyVO reply)throws SQLException;
   
   void deleteReply(int reply_num)throws SQLException;

}