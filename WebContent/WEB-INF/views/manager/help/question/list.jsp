<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="questionList" value="${dataMap.questionList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri}" />
   <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
         <div style="display:flex; justify-content:end; margin:5px;">
           <section class="container-fluid">
              <div class="row md-12">
                 <div class="col-sm-6">
                    <h5>회원관리</h5>              
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
                      <option value="i">아이디</option>
                      <option value="n">이름</option>
                      <option value="p">전화번호</option>
                      <option value="e">이메일</option>                               
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
            <!--<hr/>
             <div class="col-lg-12" style=" display:flex;">
               <div class="col-sm-4" style="text-align:center;">
               <a href="#" >공지사항</a>
               </div>
               <div class="col-sm-4" style="text-align:center; ">
            <a href="#">자주묻는 질문</a>
            </div>
               <div class="col-sm-4" style="text-align:center; ">
               <a href="#">문의하기</a>
               </div>
            </div> -->
               <hr/>
            <div class="col-md-12" style="" >
               <div class="row">
            <div class="col-12">
            <div class="card">
            <div class="card-header">
            <h3 class="card-title">회원관리>문의하기</h3>
            </div>
            </div>
            <div class="card-body table-responsive p-0">
            <table class="table table-hover text-nowrap">
            <thead>
            <tr>
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