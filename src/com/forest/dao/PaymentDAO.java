package com.forest.dao;

import java.sql.SQLException;
import java.util.List;

import com.forest.SearchCriteria;
import com.forest.dto.PaymentVO;

public interface PaymentDAO {
	
	List<PaymentVO> selectSearchPaymentList(SearchCriteria cri)throws SQLException;
	
	int selectSearchPaymentListCount(SearchCriteria cri)throws SQLException;
	
	//같은 펀드에 결제한 총 멤버 수
	int selectSearchPaymentMemberCount(int fun_num)throws SQLException;
	//같은 펀드에 결제한 총금액
	int selectSearchPaymentTotalMoney(int fun_num)throws SQLException;
	
	PaymentVO selectPaymentByPay_num(int pay_num)throws SQLException;
	
	int selectPaymentSequenceNextvalue()throws SQLException;
	
	void insertPayment(PaymentVO payment)throws SQLException;
		
	void deletePayment(int pay_num)throws SQLException;
}
