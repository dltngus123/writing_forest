<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="fundingList" value="${dataMap.fundingList }"/>
<c:set var="pageMaker" value="${dataMap.pageMaker }"/>
<c:set var="cri" value="${pageMaker.cri }"/>
<style>
.content-wrapper>#downwrap>#bestfund-layout>#inerlayout{
   display:flex;
   border:1px solid black;
}
.content-wrapper>#downwrap>#bestfund-layout>#inerlayout>#box{
   border:1px solid black; 
   height:200px;
   margin-left:5px;
   display:flex; 
   flex-direction:column;
}
.content-wrapper>#downwrap>#bestfund-layout>#inerlayout>#box>#img{
   border:1px solid black;
   height:100px;
   width:100px;
}
.content-wrapper>#downwrap>#bestfund-layout>#inerlayout>#box>#d-day{
   display:flex;
   justify-content:end;
}
.content-wrapper>#downwrap>#hotfund-layout>#inerlayout{
   display:flex;
   border:1px solid black;
}
.content-wrapper>#downwrap>#hotfund-layout>#inerlayout>#box{
   border:1px solid black; 
   height:200px;
   margin-left:5px;
   display:flex; 
   flex-direction:column;
}
.content-wrapper>#downwrap>#hotfund-layout>#inerlayout>#box>#img{
   border:1px solid black;
   height:100px;
   width:100px;
}
.content-wrapper>#downwrap>#hotfund-layout>#inerlayout>#box>#d-day{
   display:flex;
   justify-content:end;
}

.content-wrapper>#downwrap>#lastfund-layout>#inerlayout{
   display:flex;
   border:1px solid black;
}
.content-wrapper>#downwrap>#lastfund-layout>#inerlayout>#box{
   border:1px solid black; 
   height:200px;
   margin-left:5px;
   display:flex; 
   flex-direction:column;
}
.content-wrapper>#downwrap>#lastfund-layout>#inerlayout>#box>#img{
   border:1px solid black;
   height:100px;
   width:100px;
}
.content-wrapper>#downwrap>#lastfund-layout>#inerlayout>#box>#d-day{
   display:flex;
   justify-content:end;
}


</style>
 <div class="content-wrapper">
         <div style="display:flex; justify-content:end; margin:5px;">
           <section class="container-fluid">
              <div class="row md-12">
                 <div class="col-sm-6">
                    <h5>크라우드 펀딩</h5>              
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
                      <option value="">높은 퍼센트순</option>
                      <option value="">최신순</option>
                      <option value="">마감임박순</option>                            
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
            <div id="content"class="row">
            <div class="col-12">
               <div class="card">
               <div class="card-header">
               <h3 class="card-title">크라우드펀딩>전체목록</h3>
               </div>
               </div>
            
				<div id="card_body" class="card-body table-responsive p-0" >
					<ul id="fund_list"style="list-style-type:none;">
						<c:forEach items="${fundingList }" var="funding">
						<a href="detail.do?from=list&fun_num=${funding.fun_num }">
						<li id="fund_content" style="display:flex; justify-content:center;">
							<div id="title_img" style="height:80px; width:100px; border:1px solid black;margin:10px;">타이틀이미지자리</div>
							<div id="title" style="margin:30px;">${funding.fun_title }</div>
							<div id="title_content" style="margin:50px;">${funding.fun_stitle }
							<div id="title_percent" style="display:block;">현재퍼센트</div>
							</div>
							<div id="writer_name" style="margin:30px;margin-left:100px;">작가명:${funding.member_id }
							<div id="d-day" style="margin:20px;">남은날짜 자리</div>
							</div>
						</li></a>
						<hr/>
						</c:forEach>
					</ul>
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
