package com.forest.action.writer.fund;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.forest.action.Action;
import com.forest.dto.PaymentVO;
import com.forest.service.PaymentService;

public class WriterFundPayRegistAction implements Action{

	private PaymentService paymentservice;
	
	public void setPaymentservice(PaymentService paymentservice) {
		this.paymentservice = paymentservice;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    String url = "redirect:/writer/fund/detail.do?fun_num=";
	    
	    // Request Parameter에서 값 받아오기
	    int fun_num = Integer.parseInt(request.getParameter("fun_num"));
	    int pay_amount = Integer.parseInt(request.getParameter("pay_amount"));
	    String member_id = request.getParameter("member_id");

	    // PaymentVO 객체 생성 및 값 설정
	    PaymentVO payment = new PaymentVO();
	    payment.setFun_num(fun_num);
	    payment.setPay_amount(pay_amount);
	    payment.setMember_id(member_id);

	    // Payment 등록
	    paymentservice.regist(payment);

	    return url+=fun_num;
	}
}

