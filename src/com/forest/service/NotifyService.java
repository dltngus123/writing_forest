package com.forest.service;

import java.sql.SQLException;
import java.util.Map;

import com.forest.SearchCriteria;
import com.forest.dto.NotifyVO;

public interface NotifyService {
	//목록조회
	Map<String, Object>getNotifyList(SearchCriteria cri)throws SQLException;

	NotifyVO getNotify(int notify_num)throws SQLException;
	
	//수정화면상세
	NotifyVO getNotifyForModify(int notify_num)throws SQLException;
	
	void answer(int notify_num)throws SQLException;
	//등록
	void regist(NotifyVO Notify)throws SQLException;
	
	//수정
	void modify(NotifyVO Notify)throws SQLException;
	
	//삭제
	void remove(int notify_num)throws SQLException;
}