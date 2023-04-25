<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
	<link href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css" rel="stylesheet">
</head>    
<style>
div{
	border:solid 1px black;
}
.container {  display: grid;
  grid-template-columns: 100%;
  grid-template-rows: 20% 80%;
  grid-auto-columns: 100%;
  grid-auto-rows: 100%;
  gap: 0px 0px;
  grid-auto-flow: row;
  grid-template-areas:
    "title-con"
    "content-con";
  width: 100%;
  height: 900px;
}

.title-con {  display: grid;
  grid-template-columns: 5% 95%;
  grid-auto-columns: 100%;
  grid-auto-rows: 100%;
  gap: 0px 0px;
  grid-auto-flow: row;
  grid-template-areas:
    "title-set"
    "title-con1";
}

.title-con1 {  display: grid;
  grid-template-columns: 100%;
  grid-template-rows: 20% 80%;
  grid-auto-columns: 100%;
  gap: 0px 0px;
  grid-auto-flow: row;
  grid-template-areas:
    "profil-area"
    "title-name";
}
.manPicture{
   height:30px; 
   width:30px; 
   border:1px solid black; 
   border-radius:50%;
}

.content-con {  display: grid;
  grid-template-columns: 5% 95%;
  grid-template-rows: 100%;
  gap: 0px 0px;
  grid-auto-flow: row;
  grid-template-areas:
    "content-set"
    "content-area";
}
.content-wrapper>#coment{
   display:flex;
}

.content-wrapper>#coment>#fbutton{
   margin-left:10px;
}
</style>

		<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
		
		
		

<div class="container">
  <div class="title-con">
   	<div class="title-set">스타일</div>
    <div class="title-con1">
      <div class="profil-area" style="display:flex; justify-content:end;">
      	<div class="manPicture">사진</div>
      	<div class="writerName">짱짱슈효닝${writing.writer}</div>
      	<div class="viewCount">조회수 18 ${writing.viewcnt }</div>
      	<div class="likeCount">좋아요 18 ${writing.likecnt }</div>
		<a href="">구독</a>
		<a href="">신고</a>
		<a href="">목록</a>
      </div>
      <div class="title-name">이름영역</div>
    </div>
  </div>
  <div class="content-con">
    <div class="content-set">일단은 안지움</div>
      <div class="content-area">내용영역</div>
  </div>
</div>
<hr/>
      <p>
         <a href="#" class="link-black text-sm"><i class="far fa-thumbs-up mr-1"></i> Like</a>
         <span class="float-left" style="margin-right:5px;">
         <a href="#" class="link-black text-sm">
         <i class="far fa-comments mr-1"></i> Comments (1)
         </a>
         </span>
      </p>
      <hr/>
      <div id="commentlist"class="col-md-12">
         <ul class="list_comment" style="list-style-type:none;">
            <%-- <c:foreach> --%>   
            <li class="item animation_up"><div class="comment">
             <div class="comment_setting" style="text-align:right;">
                            <div class="wrap_comment_menu">             
                              <a href="#" class="btn_set requireLogin" style="margin-right:5px;">신고</a>
                              <a href="#" class="btn_set "style="color:red;" >삭제</a>
                            </div>
                        </div>
               <a href="#" class="link_profile">
                  <img src="" width="42" height="42" class="img_thumb" alt="">
               </a>
               <div class="cont_info">
                   <div class="info_append">
                      <strong class="tit_userid">
                        <a href="#" class="link_userid">${member.nickname }닉네임</a>
                         </strong>
                         <span class="ico_dot"></span>
                         <span class="txt_time">${reply_date } 날짜</span>
                   </div>
                       <p class="desc_comment">${reply_content } 내용</p>
                   </div>
               </div>
               <hr/>
            </li>
            <%-- <c:foreach> --%>
              </ul>
      </div>
      <div id="coment" class="col-md-12" >
      <input class="form-control form-control-md col-md-8" type="text" placeholder="댓글을 남겨주세요.">
      <input id="fbutton"type="submit" class="btn " value="등록" style="background-color: rgba(100, 183, 0, 0.75);color:white;"/>      
      </div>
</div>