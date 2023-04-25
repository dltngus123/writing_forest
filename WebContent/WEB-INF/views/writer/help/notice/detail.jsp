<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="content-wrapper">

		<div class="col-md-12">
		<div class="card card-primary card-outline">
		<div class="card-header">
		<h3 class="card-title">작성자:${notice.manager_id}</h3>
		 <div id="count" style="text-align:end;"><a href="list.do" style="color: inherit;">목록&nbsp;&nbsp;&nbsp;&nbsp;</a>조회수(${notice.notice_view })</div>	
		</div>
		
		<div class="card-body p-0">
		<div class="mailbox-read-info" style="text-align:center;">
		<h5> ${notice.notice_title }</h5>
		<h6>
		<span class="mailbox-read-time float-right"><fmt:formatDate value="${notice.notice_date}" pattern="yyyy-MM-dd"/></span></h6>
		</div>
		
		<div class="mailbox-read-message" style="height:800px;">
		<p>${notice.notice_content }</p>
		</div>
		</div>
		</div>
		</div>
		

   
</div>
