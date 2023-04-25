package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import com.forest.SearchCriteria;
import com.forest.dto.NoticeVO;

public interface NoticeDAO {
	
	//List<NoticeVO> selectSearchNoticeList(String searchType, String keyword)throws SQLException;
	
		List<NoticeVO> selectSearchNoticeList(SearchCriteria cri) throws SQLException;
		
		
		int selectSearchNoticeListCount(SearchCriteria cri)throws SQLException;
		
		NoticeVO selectNoticeBynotice_num(int notice_num) throws SQLException;
		
		//view 증가
		void increasenotice_view(int notice_num) throws SQLException;
		
		//Notice_seq.nextval 가져오기
		int selectNoticeSequenceNextValue() throws SQLException;
		
		void insertNotice(NoticeVO Notice) throws SQLException;
		
		void updateNotice(NoticeVO Notice) throws SQLException;
		
		void deleteNotice(int notice_num) throws SQLException;

}
