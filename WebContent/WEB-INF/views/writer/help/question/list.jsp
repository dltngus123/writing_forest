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
               <a href="<%=request.getContextPath() %>/writer/help/question/list.do?member_id=${loginUser.member_id}">문의하기</a>
               </div>
            </div>
               <hr/>
            <div class="col-md-12" id="questsion" >
               <div class="row" id="qheader">
            <div class="col-12" id="qlay">
            <div class="card">
            <div class="card-header">
            <h3 class="card-title">문의하기</h3>
            <div style="margin-left:1300px;">
				<input id="fbutton"type="submit" class="btn " value="등록" onclick="regist_go();" style="background-color: rgba(100, 183, 0, 0.75);color:white;"/>		
			</div>
            </div>
            
            </div>
            
           <div class="card-body table-responsive p-0">
				<table class="table table-hover text-nowrap">
				<thead>
				<tr>
				<th>글 번호</th>
				<th>제목</th>
				<th>등록일</th>
				<th>작성자</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${questionList }" var="question">
				<tr>
				<td>${question.q_num }</td>
				<td><a href="detail.do?from=list&q_num=${question.q_num }" style=" color: inherit;">${question.q_title }</a></td>
				<td><fmt:formatDate value="${question.q_date }" pattern="yyyy-MM-dd"/></td>
				<td>${question.member_id }</td>
				</tr>
				</c:forEach>
				</tbody>
				</table>
				</div>
            
            </div>
            
            </div>
            </div>
               
            </div>

         
          <nav aria-label="Page navigation example" style="display:flex; justify-content:center; ">
        <ul class="pagination">
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true">&laquo;</span>
            </a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true">&raquo;</span>
            </a>
          </li>
        </ul>
      </nav>
               </div>
               
<script>
	function regist_go(){
		location.href='<%=request.getContextPath()%>/writer/help/question/registForm.do';
	}
</script>