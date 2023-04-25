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
		<div class="col-md-12" style="display:flex; justify-content:end;">
			<div class="form-group" style="text-align:right;display:inline-block;">
					<input id="qbutton"type="button" class="btn " value="수정" onclick="location.href='modifyForm.do?notice_num=${notice.notice_num}';" style="background-color: rgba(100, 183, 0, 0.75);
						color:white;"	>
				<button id="qbutton"  class="btn "  onclick="remove_go();" style="background-color:rgb(192, 57, 43);color:white;">삭제</button>
					</div>
		</div>
		</div>
		</div>
		</div>
</div>

	<form role="form" >
		<input type="hidden" name="notice_num" value="${notice.notice_num }" />
	</form>
<script>

	var formObj="";
	window.onload=function(){
	formObj=$("form[role='form']");
	}
	
	function modify_go() {
		formObj.attr('action','modifyForm.do').submit();
		}
	
	function remove_go(){
	var answer = confirm("정말 삭제하시겠습니까?");
	if(answer) formObj.attr({'action':'remove.do','method':'post'}).submit();
	}
</script>

