package com.forest.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.forest.PageMaker;
import com.forest.SearchCriteria;
import com.forest.dao.LikeCountDAO;
import com.forest.dao.WritingDAO;
import com.forest.dto.WritingVO;

public class WritingServiceImpl implements WritingService{

	private WritingDAO writingDAO;
	public void setWritingDAO(WritingDAO writingDAO) {
		this.writingDAO=writingDAO;
	}
	
	
	@Override
	public Map<String, Object> getWritingList(SearchCriteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<WritingVO> writingList = writingDAO.selectSearchWritingList(cri);
		
		
		// 전체 board 개수
		int totalCount = writingDAO.selectSearchWritingListCount(cri);

		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("writingList", writingList);
		dataMap.put("pageMaker", pageMaker);
        
		return dataMap;
	}
	@Override
	public WritingVO getWriting(int writing_num) throws SQLException {
		WritingVO writing= writingDAO.selectWritingByWriting_num(writing_num);
		writingDAO.increaseViewCount(writing_num);
		return writing;
	}

	@Override
	public WritingVO getWritingForModify(int wirting_num) throws SQLException {
		WritingVO writing=writingDAO.selectWritingByWriting_num(wirting_num);
		return writing;
	}

	@Override
	public void regist(WritingVO writing) throws SQLException {
		int writing_num=writingDAO.selectWritingSequenceNextValue();
		writing.setWriting_num(writing_num);
		writingDAO.insertWriting(writing);
		
	}

	@Override
	public void modify(WritingVO writing) throws SQLException {
		
		writingDAO.updateWriting(writing);
		
	}

	@Override
	public void remove(int writing_num) throws SQLException {
		writingDAO.deleteWriting(writing_num);
		
	}

}
