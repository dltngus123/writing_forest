package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.forest.SearchCriteria;
import com.forest.dto.ReplyVO;

public class ReplyDAOImpl implements ReplyDAO{
   
   private SqlSessionFactory sqlSessionFactory;

   public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
      this.sqlSessionFactory = sqlSessionFactory;
   }

   @Override
   public List<ReplyVO> selectReplyWritingList(int writing_num, SearchCriteria cri) throws SQLException {
      SqlSession session = sqlSessionFactory.openSession();
      
      try {
         int offset = cri.getStartRowNum();
         int limit = cri.getPerPageNum();
         
         RowBounds rowBounds = new RowBounds(offset,limit);
         
         List<ReplyVO> replyList = session.selectList("Reply-Mapper.selectReplyWritingList",writing_num,rowBounds);
         return replyList;
      }finally {
         session.close();
      }
   }

   @Override
   public List<ReplyVO> selectReplyfundingList(int fun_num, SearchCriteria cri) throws SQLException {
      SqlSession session = sqlSessionFactory.openSession();
      
      try {
         int offset = cri.getStartRowNum();
         int limit = cri.getPerPageNum();
         
         RowBounds rowBounds = new RowBounds(offset,limit);
         
         List<ReplyVO> replyList = session.selectList("Reply-Mapper.selectReplyfundingList",fun_num,rowBounds);
         return replyList;
      }finally {
         session.close();
      }
   }

   @Override
   public int countWritingReply(int writing_num) throws SQLException {
      SqlSession session = sqlSessionFactory.openSession();
      
      try {
         int count=session.selectOne("Reply-Mapper.countWritingReply",writing_num);
      
         return count;
      }finally {
         session.close();
      }
   }

   @Override
   public int countFundingReply(int fun_num) throws SQLException {
      SqlSession session = sqlSessionFactory.openSession();
      
      try {
         int count=session.selectOne("Reply-Mapper.countFundingReply",fun_num);
      
         return count;
      }finally {
         session.close();
      }
   }

   
   
   @Override
   public void insertWritingReply(ReplyVO reply) throws SQLException {
      SqlSession session = sqlSessionFactory.openSession();
      
      try {
         session.update("Reply-Mapper.insertWritingReply",reply);
   
      }finally {
         session.close();
      }
      
   }

   @Override
   public void insertFundingReply(ReplyVO reply) throws SQLException {
      SqlSession session = sqlSessionFactory.openSession();
      
      try {
         session.update("Reply-Mapper.insertFundingReply",reply);
   
      }finally {
         session.close();
      }
      
   }

   @Override
   public void updateReply(ReplyVO reply) throws SQLException {
      SqlSession session = sqlSessionFactory.openSession();
      
      try {
         session.update("Reply-Mapper.updateReply",reply);
      }finally {
         session.close();
      }
      
   }

   @Override
   public void deleteReply(int reply_num) throws SQLException {
      SqlSession session = sqlSessionFactory.openSession();
      
      try {
         session.update("Reply-Mapper.deleteReply",reply_num);
      }finally {
         session.close();
      }
   }
   

   @Override
   public int selectReplySeqNextValue() throws SQLException {
      SqlSession session = sqlSessionFactory.openSession();
      
      try {
         int reply_num =(Integer) session.selectOne("Reply-Mapper.selectReplySeqNextValue");
      
         return reply_num;
      }finally {
         session.close();
      }
   }

}