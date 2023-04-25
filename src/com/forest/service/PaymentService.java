package com.forest.service;

import java.sql.SQLException;
import java.util.Map;

import com.forest.SearchCriteria;
import com.forest.dto.PaymentVO;

public interface PaymentService {

	Map<String, Object> getPaymentList(SearchCriteria cri) throws SQLException;

	int getPaymentListCount(SearchCriteria cri) throws SQLException;

	int getPaymentMemberCount(int fun_num) throws SQLException;

	int getPaymentTotalMoney(int fun_num) throws SQLException;

	PaymentVO getPaymentByPayNum(int pay_num) throws SQLException;

	void regist(PaymentVO payment) throws SQLException;
		
	void remove(int pay_num) throws SQLException;


}
