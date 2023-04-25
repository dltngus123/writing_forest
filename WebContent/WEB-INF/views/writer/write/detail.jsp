<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	
	width:800px;
	min-height:600px;
	height:auto;
	margin:0 auto;
}
.commenter-box{
	border:1px solid black;
	width:800px;
	min-height:160px;
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
	
	border:none;
	border-bottom:1px solid gray;">
	
	 <h1 class="title" id="title" style="padding-top:120px;">${writing.writing_title }</h1>
	 <span class="stitle" id="stitle">${writing.writing_stitle }</span><br><br><br>
	 
	 	<div class="profile">
	 <span class="writerNic" id="wirterNic">${writing.member_id }</span>
	<span class="writedate" id="wirtedate" style="color:white;"> <fmt:formatDate value="${writing.writing_date }" pattern="yyyy-MM-dd"/></span>
	<span  style="font-size:30px;color:black; width:40px;margin-left:500px;color:white;">좋아요</span><span class="like_count" style="font-size:30px;margin-left:20px;color:white;">0</span>
	<span class="likede"class="btn btn-block" id="like" style="font-size:20px;margin-right:250px;background-color:none; width:30px; float:right; color:white;"><a style="font-size:30px;"class="likebtn" onclick="regist_go(); return false;">♡</a></span>
		 
	 	</div>
	  </div>
	    <div>
		 </div>
		<div class="content-box">	
		${writing.writing_content }
		 
		</div>
		<div class="commenter-box">
				<div class="comment-reg">
				<div class="profile-user-img img-fluid img-circle manPicture" data-id="${loginUser.member_id }" id="pictureView"style="border: none; height: 90px; width: 90px;">
				    <img src="<%=request.getContextPath()%>/common/getimg.do?member_id=${loginUser.member_id}" style="border: none; height: 90px; width: 90px;" class="profile-user-img img-fluid img-circle"/></div>
				  <textarea id="comment-text"class=comment-textarea placeholder="소중한 의견을 댓글로 남겨주세요."></textarea>
				  <button type="button" class="btn btn-block btn-default btn-sm" style="width:100px; height:30px; margin-left:650px; background:white" onclick="Replyregist_go();">등록</button>
					
				</div>
				
				</div>
			
<script>
  
</script>

<script>
  
   var data={
		  writing_num:'${writing.writing_num}',
		  member_id:'${loginUser.member_id}'
           };
 
   	 
  function regist_go(){
	  

		$.ajax({
		     url:"<%=request.getContextPath()%>/like/registlike.do",
		     contentType:'application/json',
		     data:JSON.stringify(data),      
		     type:"post",
		     success:function(data){
		        $('span.like_count').text(data);
		        $('a.likebtn').remove();
		        $('span.likede').append('<a style="font-size:30px;" class="likebtn" onclick="remove_go(); return false;">♥︎</a>');
		    },error:function(error){
		    	alert("에러");
		    }
		   
		      
		});
	    
   } 
  function remove_go(){
	  $.ajax({
		  url:"<%=request.getContextPath()%>/like/removelike.do",
	  	  contentType:'application/json',
	  	  data:JSON.stringify(data),
	  	  type:"post",
	  	  success:function(data){
	  		 $('span.like_count').text(data);
	  		 $('a.likebtn').remove();
	  		 $('span.likede').append('<a style="font-size:30px;" class="likebtn" onclick="regist_go(); return false;">♡</a>');
	  	  },error:function(error){
	  		  alert("에러");
	  	  }
	  
	  
	  })
	  
  }
  </script>
  <%@ include file="./reply_js.jsp" %>
