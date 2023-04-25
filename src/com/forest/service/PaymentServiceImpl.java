package com.forest.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.forest.PageMaker;
import com.forest.SearchCriteria;
import com.forest.dao.PaymentDAO;
import com.forest.dto.PaymentVO;

public class PaymentServiceImpl implements PaymentService{

	private PaymentDAO paymentDAO;
	public void setPaymentDAO(PaymentDAO paymentDAO) {
		this.paymentDAO = paymentDAO;
	}
	
	@Override
	public Map<String, Object> getPaymentList(SearchCriteria cri) throws SQLException {
		Map<String , Object> dataMap = new HashMap<String , Object>();
		
		List<PaymentVO> paymentList = paymentDAO.selectSearchPaymentList(cri);
		
		int totalCount = paymentDAO.selectSearchPaymentListCount(cri);
		
		PageMaker pagemaker= new PageMaker();
		pagemaker.setCri(cri);
		pagemaker.setTotalCount(totalCount);
		
		dataMap.put("paymentList", paymentList);
		dataMap.put("pagemaker",pagemaker);
		return dataMap;
	}
	@Override
	public int getPaymentListCount(SearchCriteria cri) throws SQLException {
		  int  payment = paymentDAO.selectSearchPaymentListCount(cri);
		   
		    return payment;
	}

	
	@Override
	public int getPaymentMemberCount(int fun_num) throws SQLException {
		  return paymentDAO.selectSearchPaymentMemberCount(fun_num);
	   
	    
	}

	@Override
	public int getPaymentTotalMoney(int fun_num) throws SQLException {
		 return paymentDAO.selectSearchPaymentTotalMoney(fun_num);
	   
	    
	}



	@Override
	public PaymentVO getPaymentByPayNum(int pay_num) throws SQLException {
		PaymentVO payment = paymentDAO.selectPaymentByPay_num(pay_num);
		return payment;
	}

	

	@Override
	public void regist(PaymentVO payment) throws SQLException {
		int pay_num = paymentDAO.selectPaymentSequenceNextvalue();
		payment.setPay_num(pay_num);
		paymentDAO.insertPayment(payment);
	}


	@Override
	public void remove(int pay_num) throws SQLException {
		paymentDAO.deletePayment(pay_num);
		
	}
	
}
