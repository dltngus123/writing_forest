package com.forest.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.forest.PageMaker;
import com.forest.SearchCriteria;
import com.forest.dao.NotifyDAO;
import com.forest.dto.NotifyVO;

public class NotifyServiceImpl implements NotifyService {

	private NotifyDAO notifyDAO;
	public void setNotifyDAO(NotifyDAO notifyDAO) {
		this.notifyDAO = notifyDAO;
	}

	@Override
	public Map<String, Object> getNotifyList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<NotifyVO> notifyList = notifyDAO.selectSearchNotifyList(cri);

		int totalCount=notifyDAO.selectSearchNotifyListCount(cri);

		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("notifyList", notifyList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public NotifyVO getNotify(int notify_num) throws SQLException {
		NotifyVO board = notifyDAO.selectNotifyByNotify_num(notify_num);
		return board;
	}

	@Override
	public NotifyVO getNotifyForModify(int notify_num) throws SQLException {
		NotifyVO board = notifyDAO.selectNotifyByNotify_num(notify_num);
		return board;
	}
	
	@Override
	public void answer(int notify_num) throws SQLException {
		notifyDAO.answerNotify(notify_num);
	}

	@Override
	public void regist(NotifyVO notify) throws SQLException {
		int notify_num = notifyDAO.selectNotifySequenceNextValue();
		notify.setNotify_num(notify_num);
		notifyDAO.insertNotify(notify);
	}

	@Override
	public void modify(NotifyVO notify) throws SQLException {
		notifyDAO.updateNotify(notify);
	}

	@Override
	public void remove(int notify_num) throws SQLException {
		notifyDAO.deleteNotify(notify_num);
	}

}