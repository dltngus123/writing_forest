<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   
 <c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="writeList" value="${dataMap.writingList }" />
   

<style>
.content-wrapper>#downwrap>#content>#marticle>#list>li{
  list-style-type:none;
}
.content-wrapper>#downwrap>#content>#marticle>#list>li>#flex{
   display:flex;
   justify-content:space-around;
}
.listBox{
  
  width:800px;
  height:auto;
  margin:0 auto;

}
.title{
margin-left:50px;
font-size:30px;
}
.stitle{
margin-left:50px;
}
.writerNic{
margin-left:50px;
}
.writedate{
margin-left:20px;
}
.like{
margin-left:280px;
}
</style>



     

<!-- Content Wrapper. Contains page content -->
      <div >
         <div style="display:flex; justify-content:end; margin:5px;">
        <div id="keyword" class="card-tools" style="width:550px; ">
                   <div class="input-group row">
                      <!-- search bar -->
                      <!-- sort num -->
                    <select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="">                               
                       <option value="10" selected="">정렬개수</option>
                       <option value="2">2개씩</option>
                       <option value="3">3개씩</option>
                       <option value="5">5개씩</option>
                    </select>
                    
                    
                    <!-- search bar -->
                   <select class="form-control col-md-3" name="searchType" id="searchType">
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
        <div class="listBox">
     <c:forEach items='${writeList }' var="writing">
        	<a style="color:black;"href="detail.do?writing_num=${writing.writing_num }"><div style="height:170px; border-bottom:1px solid gray;"class="write" >
        		<div  style=" margin-top:10px;width:150px;height:150px;float:left;"class="writeImg" data-id="${writing.writing_num }"></div>
        		<span style=" width:500px;height:50px; float:left;"class="title">${writing.writing_title }</span>
        		<span style=" width:500px;height:30px;float:left;"class="stitle">${writing.writing_stitle }</span><br>
        		<br><br><br>
        		 <span style="width:100px;height:30px;"class="writerNic" id="writerNic" >${writing.member_id }</span>
	             <span style="width:100px;height:30px;"class="writedate" id="writedate" > <fmt:formatDate value="${writing.writing_date }" pattern="yyyy-MM-dd"/></span>
	             <span style="width:50px;height:30px;"class="like">❤︎</span><span class=likecount>0</span>
        	</div></a>
	            
        </c:forEach>
        </div>
        
        
        
        
        
        
  <script>
  window.onload=function(){
	  WirteImgThumb('<%=request.getContextPath()%>');
  }
  
  
  </script>      
        
        
        
        
        
        
        
        
        
        
        

      <!-- /.content-wrapper -->
