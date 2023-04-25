<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="questionList" value="${dataMap.questionList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri}" />

<style>
.content-wrapper>#downwrap>#questsion>#qheader>#qlay>#qcont{
	display:flex;
	flex-direction:column;
	margin:0 auto;
}
.content-wrapper>#downwrap>#questsion>#qheader>#qlay>#qcont>.form-group>#qbutton{
	background-color: rgba(100, 183, 0, 0.75);
	color:white;
	
}
</style>


   <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
      	<div style="display:flex; justify-content:end; margin:5px;">
	  		<section class="container-fluid">
		  		<div class="row md-12">
		  			<div class="col-sm-6">
		  				<h5>고객센터</h5>  				
		  			</div>
			  		</div>
			  	</section>
  		<div id="keyword" class="card-tools" style="width:600px; ">
   					 <div class="input-group row">
   					 	<!-- search bar -->
   					 	<!-- sort num -->
					  	<select class="form-control col-md-4" name="perPageNum" id="perPageNum" onchange="">					  		  		
					  		<option value="10" selected="">정렬개수</option>
					  		<option value="2">2개씩</option>
					  		<option value="3">3개씩</option>
					  		<option value="5">5개씩</option>
					  	</select>
					  	
					  	
					  	<!-- search bar -->
					 	<select class="form-control col-md-4" name="searchType" id="searchType">
					 		<option value="">검색구분</option>
					 		<option value="s">답변상태</option>
					 		<option value="i">아이디</option>
					 		<option value="t">제목</option>			 						
						</select>
						<!-- keyword -->
   					 	<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="">
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1);">
								<i class="fa fa-fw fa-search"></i>
							</button>

						</span>
					<!-- end : search bar -->		
   					 </div>
   				</div>
   		</div>		
      	<div id="downwrap" >
      		<hr/>
      		<div class="col-lg-12" style=" display:flex;">
      			<div class="col-sm-4" style="text-align:center;">
      			<a href="<%=request.getContextPath() %>/writer/help/notice/list.do" >공지사항</a>
      			</div>
      			<div class="col-sm-4" style="text-align:center; ">
				<a href="<%=request.getContextPath() %>/writer/help/fnq/list.do">자주묻는 질문</a>
				</div>
      			<div class="col-sm-4" style="text-align:center; ">
      			<a href="<%=request.getContextPath() %>/writer/help/question/list.do">문의하기</a>
      			</div>
      		</div>
      			<hr/>
      		<div class="col-md-12" id="questsion" >
      			<div class="row" id="qheader">
				<div class="col-12" id="qlay">
				<div class="card">
				<div class="card-header">
				<h3 class="card-title">문의하기</h3>
				<a href="list.do?member_id=${loginUser.member_id }" style="color:inherit;margin-left:1200px;">목록</a>
				</div>
				</div>
				
				<div class="col-8" id="qcont">

					<div class="form-group">
					<label for="inputTitle">문의 제목</label>
					<div id="title">${question.q_title }</div>
					<hr/>
					</div>
					<div class="form-group">
					<label for="inputContent">문의 내용</label>
					<div id="content">${question.q_content }</div>
					<hr/>
					</div>
					<div id="commentlist"class="col-md-12">
			<ul class="list_comment" style="list-style-type:none;">
			
				<li class="item animation_up"><div class="comment">
				 <div class="comment_setting" style="text-align:right;">
				            </div>
					
					<div class="cont_info">
					    <div class="info_append">
					       <strong class="tit_userid">
					         <a href="#" class="link_userid">작성자:${question.manager_id}</a>
					          </strong>
							    <span class="ico_dot"></span>
							    <span class="txt_time" style="margin-left:20px;"><fmt:formatDate value="${question.q_answerdate}" pattern="yyyy-MM-dd"/> </span>
					    </div>
					        <p class="desc_comment">${question.q_answer }</p>
					        <hr/>
					    </div>
					</div>
					
				</li>
			
              </ul>
		</div>
					<hr/>
					<div  id="modifynremove"class="form-group" style="text-align:right;display:inline-block;">
					<input id="qbutton"type="button" class="btn " value="수정" onclick="modify_go();">
					<button id="qbutton"  class="btn "  onclick="remove_go();" style="background-color:rgb(192, 57, 43);">삭제</button>

					</div>
				
				</div>
				
				</div>
				</div>
      			
      		</div>
      	</div>
      	</div>
      	
      	
      		<form role="form" >
				  	<input type="hidden" name="q_num" value="${question.q_num }" />
				  	<input type="hidden" name="member_id" value="${question.member_id}" />
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
      	
      	const q_answer = "${question.q_answer}";

        if (!q_answer) {
          document.querySelector(".cont_info").style.display = "none";
        }
       
      	</script>
      	 
