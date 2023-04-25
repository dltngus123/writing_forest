<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- Content Wrapper. Contains page content -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="noticeList" value="${dataMap.noticeList }" />
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri}" />
   
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
                      <option value="t">제목</option>
                      <option value="w">작성자</option>
                      <option value="c">내용</option>                               
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
               <a href="<%=request.getContextPath() %>/writer/help/question/list.do?member_id=${loginUser.member_id}">문의하기</a>
               </div>
            </div>
               <hr/>
         <div class="row">
            <div class="col-12">
            <div class="card">
            <div class="card-header">
            <h3 class="card-title">공지사항</h3>
            <div style="margin-left:1300px;">
				<input id="fbutton"type="hidden" class="btn " value="등록" onclick="regist_go();" style="background-color: rgba(100, 183, 0, 0.75);color:white;"/>		
			</div>
            </div>
            
            
                  		<div class="col-md-12" style="" >
      			<div class="row">
				<div class="col-12">
				<div class="card">

				</div>
				
				<div class="card-body table-responsive p-0">
				<table class="table table-hover text-nowrap">
				<thead>
				<tr>
				<th>공지번호</th>
				<th>제목</th>
				<th>등록일</th>
				<th>작성자</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${noticeList }" var="notice">
				<tr>
					<td>${notice.notice_num }</td>
					<td><a href="detail.do?from=list&notice_num=${notice.notice_num }"style="color: inherit;">${notice.notice_title }</a></td>
					<td><fmt:formatDate value="${notice.notice_date}" pattern="yyyy-MM-dd"/></td>
					<td>${notice.manager_id }</td>
				</tr>
				</c:forEach>
				</tbody>
				</table>
				</div>
				
				</div>
				
				</div>
				</div>
            
            </div>
            
            </div>
            </div>
               
            </div>
            <div id="content">
               
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
