package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import com.forest.SearchCriteria;
import com.forest.dto.NotifyVO;

public interface NotifyDAO {
	
	List<NotifyVO> selectSearchNotifyList(SearchCriteria cri) throws SQLException;

	int selectSearchNotifyListCount(SearchCriteria cri) throws SQLException;

	NotifyVO selectNotifyByNotify_num(int notify_num)throws SQLException;
	
	int selectNotifySequenceNextValue()throws SQLException;
	
	void answerNotify(int notify_num)throws SQLException;

	void insertNotify(NotifyVO notify)throws SQLException;
	
	void updateNotify(NotifyVO notify)throws SQLException;
	
	void deleteNotify(int notify_num)throws SQLException;

}
