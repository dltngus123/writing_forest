<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
.content-wrapper>#navbar>#navlay{
   display:flex; 
   justify-content:end;
}
.content-wrapper>#navbar>#navlay>#writer{
   display:flex;
}
.content-wrapper>#navbar>#navlay>#writer>#img{
   height:30px; 
   width:30px; 
   border:1px solid black; 
   border-radius:50%;
}
.content-wrapper>#title-img{
   border:1px solid black;
}
.content-wrapper>#title-img>div{
   height:200px; 
}
.content-wrapper>#title{
   border:1px solid black;
}
.content-wrapper>#coment{
   display:flex;
}

.content-wrapper>#coment>#fbutton{
   margin-left:10px;
}
.content-wrapper>#fund>#progress {
    width: 100%;
    height: 20px;
    background-color: #ddd;
    position: relative;
    margin: 10px 0;
}

.content-wrapper>#fund>#bar {
    height: 100%;
    background-color: #4CAF50;
    position: absolute;
    top: 0;
    left: 0;
    width: 0%;
    transition: width 0.5s;
}

</style>

<div class="content-wrapper">
   <div id="navbar"class="col-md-12" >
      <div id="navlay"class="col-md-12">
      <div id="writer"class="col-md-2 btn">
      <div id="img" ></div>
      ${funding.member_id }</div>
      <div class="col-md-2 btn">${funding.fun_view }</div>
      <div class="col-md-2 btn">좋아요</div>
      <div class="col-md-1 btn">구독</div>
      <div class="col-md-1 btn">목록</div>
      <div class="col-md-1 btn">신고</div>
      </div>
   </div>
   
   <div id="title-img"class="col-md-12">
      <div class="col-md-12">대문사진</div>
      <hr/>
   </div>
   <div style="text-align:right; margin:10px;">
      <input id="fbutton"type="submit" class="btn " value="비활성" style="background-color:rgb(192, 57, 43);color:white;"/>   
      <input id="fbutton"type="submit" class="btn " value="활성" style="background-color:rgb(52, 152, 219);color:white;"/>         
   </div>
      <div id="fund" class="col-md-12" style="margin:auto;">
         <div class="col-md-12">남은 펀딩 기간</div>
         
            <div class="col-md-12" style="text-align:right;">
               <span id="innerpeople">50</span>
               <span>/</span>
               <span id="capacity">100</span>
            </div>
            
            <div id="progress"class="progress progress-xs progress-striped active">
            <div id="bar"class="progress-bar bg-success" style="width: 1%"></div>
            </div>
         
            <div class="col-md-12">현재 달성 금액</div>
            <div class="col-md-12">?명참여</div>
            <div class="row">
               <div class="col-md-4 offset-md-8">
               <form action="simple-results.html">
               <div class="input-group">
               <input type="text" class="form-control form-control-md" placeholder="금액을 입력하세요">
               <div class="input-group-append">      
               <input id="fbutton"type="submit" class="btn " value="펀딩하기" style="background-color: rgba(100, 183, 0, 0.75);color:white;"/>      
               </div>
               </div>
               </form>
               </div>
            </div>
      </div>
      <hr/>
      <div class="col-md-12">
         <div class="col-md-6">장르:</div>
         <div class="col-md-6">제작예정 기간:</div>
      </div>
      <hr/>
      <div class="col-md-12">
         <div id="title"class="col-md-12">${funding.fun_title }</div>
         <div class="col-md-12">${funding.fun_stitle }</div>
         <hr/>
         <div class="col-md-12">${funding.fun_content }</div>
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
<script>
$(document).ready(function() {
  var innerpeople = parseInt($('#innerpeople').text());
  var capacity = parseInt($('#capacity').text());
  var percent = (innerpeople / capacity) * 100;
  $('#bar').css('width', percent + '%');
});
</script>
