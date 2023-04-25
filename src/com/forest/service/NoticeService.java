package com.forest.service;

import java.sql.SQLException;
import java.util.Map;

import com.forest.SearchCriteria;
import com.forest.dto.NoticeVO;

public interface NoticeService {

	//목록조회
	Map<String, Object> getNoticeList(SearchCriteria cri)throws SQLException;

	//상세보기
	NoticeVO getNotice(int notice_num)throws SQLException;
	
	//상세보기
	NoticeVO getNoticeForModify (int notice_num)throws SQLException;
	
	void regist(NoticeVO notice)throws SQLException;
	
	void modify(NoticeVO notice)throws SQLException;
	
	void remove(int notice_num)throws SQLException;
}
