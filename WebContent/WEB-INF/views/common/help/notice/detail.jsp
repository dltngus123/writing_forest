<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.content-wrapper>#nav{
   border:1px solid black;
   height:50px;
   text-align:right;
}
.content-wrapper>#nav>#count{
   margin-top:10px;
}
.content-wrapper>#content-head{
   border:1px solid black;
   height:200px;
}
.content-wrapper>#content-title{
   border:1px solid black;
   height:100px;
}
.content-wrapper>#content-title>#title{
   text-align:center;
}
.content-wrapper>#content-title>#data{
   border:1px solid black;
   margin:15px;
}
.content-wrapper>#content-body{
   border:1px solid black;
   height:1000px;
}
</style>
<div class="content-wrapper">
   <div id="nav" class="col-md-12">
      <div id="count">조회수(${notice_view })</div>
   </div>
   <div id="content-head" class="col-md-12">
      <div id="title-img">${notice_img }대문 이미지</div>
   </div>
   <div id="content-title" class="col-md-12">
      <div id="title">${notice_title }제목</div>
      <div id="data" class="col-sm-6">
         <div id="writer">by:${manager_id}작성자</div>
         <div id="regdate">${notice_date}등록일</div>
      </div>
   </div>
   <div id="content-body" class="col-md-12">
      <div id="content" class="col-md-12">내용${notice_content }</div>
   </div>
   
</div>
