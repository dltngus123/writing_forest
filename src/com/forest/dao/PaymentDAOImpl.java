package com.forest.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.forest.SearchCriteria;
import com.forest.dto.PaymentVO;

public class PaymentDAOImpl implements PaymentDAO{
	
	private SqlSessionFactory sqlSessionFactory;
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	@Override
	public List<PaymentVO> selectSearchPaymentList(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		int startRow = cri.getStartRowNum();
		int endRow = startRow+cri.getPerPageNum()-1;
		
		Map<String, Object>dataparam = new HashMap<String, Object>();
		dataparam.put("searchType", cri.getSearchType());
		dataparam.put("keyword", cri.getKeyword());
		dataparam.put("startRow", startRow);
		dataparam.put("endRow", endRow);
		
		try {
			List<PaymentVO> paymentList = session.selectList("Payment-Mapper.selectSearchPaymentList",dataparam);
			return paymentList;
		}finally {
			if(session!=null)session.close();
		}
		
	}

	@Override
	public int selectSearchPaymentListCount(SearchCriteria cri) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int count = session.selectOne("Payment-Mapper.selectSearchPaymentListCount",cri);
			return count;
		}finally {
			if(session!=null)session.close();
		}
	}
	
	@Override
	public int selectSearchPaymentMemberCount(int fun_num) throws SQLException {
	    SqlSession session = sqlSessionFactory.openSession();
	    try {
	        int count = session.selectOne("Payment-Mapper.selectSearchPaymentMemberCount", fun_num);
	        return count;
	    } finally {
	        if (session != null) session.close();
	    }
	}

	@Override
	public int selectSearchPaymentTotalMoney(int fun_num) throws SQLException {
	    SqlSession session = sqlSessionFactory.openSession();
	    try {
	    	int totalMoney=0;
	    	if(session.selectOne("Payment-Mapper.selectSearchPaymentTotalMoney", fun_num)!=null)
	    		totalMoney = session.selectOne("Payment-Mapper.selectSearchPaymentTotalMoney", fun_num);
	        return totalMoney;
	    } finally {
	        if (session != null) session.close();
	    }
	}


	@Override
	public PaymentVO selectPaymentByPay_num(int pay_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			PaymentVO payment= session.selectOne("Payment-Mapper.selectPaymentByPay_num",pay_num);
			return payment;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public int selectPaymentSequenceNextvalue() throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			int seq_num = session.selectOne("Payment-Mapper.selectPaymentSequenceNextValue");
			
			return seq_num;
		}finally {
			if(session!=null)session.close();
		}
	}

	@Override
	public void insertPayment(PaymentVO payment) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Payment-Mapper.insertPayment",payment);
			
		}finally {
			if(session!=null)session.close();
		}
		
	}


	@Override
	public void deletePayment(int pay_num) throws SQLException {
		SqlSession session = sqlSessionFactory.openSession();
		
		try {
			session.update("Payment-Mapper.deletePayment",pay_num);
			
		}finally {
			if(session!=null)session.close();
		}
	}



	

	

}
