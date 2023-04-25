package com.forest.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.forest.PageMaker;
import com.forest.SearchCriteria;
import com.forest.dao.NoticeDAO;
import com.forest.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService{
	
	private NoticeDAO noticeDAO;
	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}

	@Override
	public Map<String, Object> getNoticeList(SearchCriteria cri) throws SQLException {
		Map<String , Object> dataMap = new HashMap<String , Object>();
		
		List<NoticeVO> noticeList = noticeDAO.selectSearchNoticeList(cri);
		
		int totalCount = noticeDAO.selectSearchNoticeListCount(cri);
		
		PageMaker pagemaker= new PageMaker();
		pagemaker.setCri(cri);
		pagemaker.setTotalCount(totalCount);
		
		dataMap.put("noticeList", noticeList);
		dataMap.put("pagemaker",pagemaker);
		return dataMap;
	}

	@Override
	public NoticeVO getNotice(int notice_num) throws SQLException {
		NoticeVO board = noticeDAO.selectNoticeBynotice_num(notice_num);
		noticeDAO.increasenotice_view(notice_num);
		return board;
	}

	@Override
	public NoticeVO getNoticeForModify(int notice_num) throws SQLException {
		NoticeVO board = noticeDAO.selectNoticeBynotice_num(notice_num);
		return board;
	}

	@Override
	public void regist(NoticeVO notice) throws SQLException {
		int notice_num = noticeDAO.selectNoticeSequenceNextValue();
		notice.setNotice_num(notice_num);
		noticeDAO.insertNotice(notice);
		
	}

	@Override
	public void modify(NoticeVO notice) throws SQLException {
		noticeDAO.updateNotice(notice);
		
	}

	@Override
	public void remove(int notice_num) throws SQLException {
		noticeDAO.deleteNotice(notice_num);
		
	}

}
