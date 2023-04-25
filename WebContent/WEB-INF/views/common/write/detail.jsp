<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
	<link href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css" rel="stylesheet">
</head>    

<style>

.title{
 max-width:800px;
 margin-left:330px;
 font-size:50px;
 color:white;
}
.stitle{
 
 margin-left:330px;
 font-size:30px;
 color:white;
}
.content-box{
	border-bottom:1px solid gray;
	width:800px;
	min-height:600px;
	margin:0 auto;
}
.commenter-box{
	
	width:800px;
	height:100vh;
	margin:0 auto;
}
.writerNic{
 	
 	margin-left:330px;
	font-size:20px;
	color:gray;
}
.writedate{
	padding:none;
 	margin-left:30px;
	font-size:20px;
    color:gray;
}
.comment-reg{
	display: flex;
    flex-wrap: wrap;
	align-content: stretch;
	border:none;
	border-bottom:1px solid gray;
	width:800;
	height:150px;
	margin:0 auto;
 
}
#pictureView{
	margin-top:5px;
		
}
.comment-textarea{
	width:630px;
	height:100px;
	margin-top:5px;
	margin-right:20px;
	border:none;
	
}
.comment-box{
    
	border:none;
	border-bottom:1px solid gray;
	width:800px;
	min-height:120px;
	margin:0 auto;
	
}
.commenter-Name{
 margin-top:20px;
 margin-left:25px;
}
.profile{
margin-top:-50px;
}


</style>
 	
	<div  class="writeImg" data-id="${writing.writing_num }"
	style="width:100vw;
	height:300px;
	background-color: rgba(0, 0, 0, 50);
	border:none;
	border-bottom:1px solid gray;">
	
	 <h1 class="title" id="title" style="padding-top:120px;">${writing.writing_title }</h1>
	 <span class="stitle" id="stitle">${writing.writing_stitle }</span><br><br><br>
	 
	 	<div class="profile">
	 <span class="writerNic" id="wirterNic">${writing.member_id }</span>
	<span class="writedate" id="wirtedate" style="color:white;"> <fmt:formatDate value="${writing.writing_date }" pattern="yyyy-MM-dd"/> </span>
		 <button class="btn btn-block" id="like" style="background-color:rgba(100, 183, 0, 0.75); width:100px; margin-left:1000px; margin-top:-30px; ">♥︎</button>
	 	</div>
	  </div>

		<div class="content-box">	
		${writing.writing_content }
		 
		</div>
			
<script>
  window.onload=function(){
	WirteImgThumb('<%=request.getContextPath()%>');
}

</script>
