<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri}" />
<c:set var="reply" value="${dataMap.replyList }"/>
<style>
</style>
<div class="content-wrapper">
 
<section class="content">
<form role="form">

<div class="card">

<div class="card-body row">
   <div id="navbar"class="col-md-12" style="text-align:end;" >
      <div id="navlay"class="col-md-12">
      <div id="writer"class="col-md-2 btn">
      <div id="img" style="font-size:0.9rem; font-weight: bold;"><img  src="<%=request.getContextPath() %>/common/getimg.do?member_id=${funding.member_id}" style="width: 50%; height: 50%; odject-fit:cover;border-radius: 50%;"><a href="<%=request.getContextPath() %>/writer/feed/main.do">${funding.member_id }</a></div>
      </div>
      <div class="col-md-2 btn" style="font-size:0.8rem;">조회수(${funding.fun_view })</div>
      <div class="col-md-1 btn" style="font-size:0.8rem;"  onclick="subs_go();">구독</div>
      <a style="font-size:0.8rem;" href="<%=request.getContextPath()%>/common/fund/list.do"class="col-md-1 btn">목록</a>
      <div  style="font-size:0.8rem;"class="col-md-1 btn" onclick="notify_go();">신고</div>
      </div>
     
   </div>

<div class="col-5 text-center d-flex align-items-center justify-content-center">
 <div id="fund" class="col-md-10" >
 <div id="img"><img  src="<%=request.getContextPath() %>/common/getimg.do?member_id=${funding.fun_img}" style=" border:1px solid black;width: 300px; height: 300px; odject-fit:cover;"></div>
<p id="d-day" style="text-align:start;">마감일 <fmt:formatDate value="${funding.fun_endDate}" pattern="yyyy/MM/dd"/>까지 <span id="days"></span>일 남았습니다.</p>
<p class="lead mb-5">
<div class="progress-group col-md-12" style="text-align:start;">
            목표 금액 : ₩ ${funding.fun_money }
                <div class="col-md-12" style="text-align:right;">
                 <span id="innerpeople"></span>
               <span>/</span>
               <span id="capacity">100</span>
            </div>
            
            <div id="progress"class="progress progress-xs progress-striped active">
            <div id="bar"class="progress-bar bg-success" style="width: 1%"></div>
            </div>
            </div>
<br>

   
    <div class="col-md-12" style="text-align:start;">현재 달성 금액 : ₩ ${totalMoney} </div>
    <div class="col-md-12" style="text-align:start;"> ${totalMember}명 참여</div>




            

</div>

</div>
<div class="col-7" style="margin-top:100px;">
<div class="col-md-12">
         <div class="col-md-7">장르: ${funding.fun_category }</div>
         <span class="col-md-7">제작예정 기간 : <fmt:formatDate value="${funding.fun_regDate}" pattern="yyyy-MM-dd"/> ~ <span><fmt:formatDate value="${funding.fun_endDate}" pattern="yyyy-MM-dd"/></span></span>
      </div>
      <hr/>
<div class="form-group">
<label for="inputName">${funding.fun_title }</label>
</div>
<div class="form-group">
<div  style=""id="inputEmail">${funding.fun_stitle }</div>
</div>
<div class="form-group">
<div id="inputSubject">${funding.fun_content }</div>
</div>
 <hr/>
<div class="row">
               <div class="col-md-5 offset-md-7">
                 <div class="input-group">
               <input name="pay_amount" type="text" class="form-control form-control-md" placeholder="금액을 입력하세요">
               <div class="input-group-append">      
              <input id="fbutton" type="button" class="btn" onclick="regist_go();"style="background-color: rgba(100, 183, 0, 0.75); color: white;" value="결제" />
               </div>
               </div>
                <input id="modifybtn" type="button" class="btn" onclick="modify_go();" value="수정" style="background-color: rgba(100, 183, 0, 0.75); color: white; margin-top: 50px;"/>

               
               </div>
            </div>

</div>
</div>
<hr/>
 <div id="commentlist" class="col-md-9" style="text-align:start;">
  <ul class="list_comment" style="list-style-type:none;">
  <c:if test="${reply.reply_num not empty}">
    <c:forEach items="${reply}" var="reply">
       <input type="hidden" name="reply_num" value=${reply.reply_num }>
      <li class="item animation_up">
        <div class="comment">
          <div class="comment_setting" style="text-align:right;">
            <div class="wrap_comment_menu">
              <a href="#" class="btn_set requireLogin" style="margin-right:5px;" onclick="notify_go();">신고</a>
              <c:if test="${loginUser.member_id eq reply.member_id }">
              <a href="#" id="delete" class="btn_set" style="color:red;" onclick="remove_go();">삭제</a>
              </c:if>
            </div>
          </div>
          <a href="#" class="link_profile">
            <img src="<%=request.getContextPath()%>/common/getimg.do?member_id=${reply.member_id}"  class="img_thumb" style="border-radius:50%;width:30px; height:30px;" />
          <span class="info_append">
              <strong class="tit_userid" style="font-weight:bold;">
                <a href="<%=request.getContextPath() %>/writer/feed/main.do" class="link_userid" >${reply.member_id}</a>
              </strong>
              <span class="ico_dot"></span>
              <span class="txt_time" style="margin-left:30px;"><fmt:formatDate value="${reply.reply_date}" pattern="yyyy-MM-dd"/></span>
            </span>
          </a>
          <div class="cont_info">
            
            <p class="desc_comment" style="margin-left:10px;text-align:center;font-size:1.2rem;">${reply.reply_content}</p>
          </div>
          <hr/>
        </div>
      </li>
    </c:forEach>
    </c:if>
  </ul>
</div>

      
      
      
      <div id="coment" class="col-md-9" style="display:flex; justify-content:center; margin-bottom:20px;" >
      <input  name="reply_content" class="form-control form-control-md col-md-8" type="text" placeholder="댓글을 남겨주세요.">
      <input  id="fbutton"type="submit" class="btn "  onclick="reply_go();"value="등록" style="background-color: rgba(100, 183, 0, 0.75);color:white;"/>      
      
      </div>
</div>
   <input type="hidden" name="fun_num" value=${funding.fun_num }>
   <input type="hidden" name="member_id" value=${loginUser.member_id }>
</form>
</section>
</div>




<script>
var formObj="";
   window.onload=function(){
      formObj=$("form[role='form']");
      }

   $(document).ready(function() {
     var innerpeople = parseInt($('#innerpeople').text());
     var capacity = parseInt($('#capacity').text());
     var percent = (innerpeople / capacity) * 100;
     $('#bar').css('width', percent + '%');
   });
   function modify_go(){
      formObj.attr('action','modifyForm.do').submit(); 
   }
   
   function notify_go(){
      OpenWindow('<%=request.getContextPath()%>/writer/help/notify.do','notify Page','800','800');
   }
   function regist_go(){
      var answer =confirm("정말 결제하시겠습니까?");
      if(answer) formObj.attr('action','regist.do').submit(); 
      if(answer)alert("결제가 완료되었습니다.");
   }
   function reply_go(){
      formObj.attr('action','replyregist.do').submit(); 
   }
   function remove_go(){
      var answer =confirm("정말 삭제하시겠습니까?");
      if(answer) formObj.attr('action','remove.do').submit(); 
      if(answer)alert("삭제가 완료되었습니다.");
   }
   
   var formatDate = new Date();
   var today = new Date(formatDate);
   var year = today.getFullYear();
   var month = today.getMonth() + 1;
   var day = today.getDate();
   var dateString = year + '-' + month + '-' + day;

   var endDate = new Date('<fmt:formatDate value="${funding.fun_enddate}" pattern="yyyy-MM-dd"/>');
   var endYear = endDate.getFullYear();
   var endMonth = endDate.getMonth() + 1;
   var endDay = endDate.getDate();
   var dateEnding = endYear + '-' + endMonth + '-' + endDay;

   var btMs = endDate.getTime() - today.getTime();
   var btDay = Math.ceil(btMs / (1000 * 60 * 60 * 24));
   
   var dDayElement = document.getElementById("days");
   dDayElement.innerHTML = btDay;

   /* var dDayElement = document.getElementById("d-day");
   dDayElement.innerHTML = "마감일 "+'<fmt:formatDate value="${funding.fun_enddate}" pattern="yyyy/MM/dd"/>'+"까지 " + btDay + ' 일 남았습니다.'; */
   const member = "${funding.member_id}";
   const User = "${loginUser.member_id}";

   if (User === member) {
     document.querySelector("#modifybtn").style.display = "block";
   } else {
     document.querySelector("#modifybtn").style.display = "none";
   }
   
   const goalAmount = parseInt("${funding.fun_money}");
   const totalAmount = parseInt("${totalMoney}");

     const percentage = Math.floor((totalAmount / goalAmount) * 100);
     document.querySelector("#innerpeople").textContent = percentage;
     console.log(percentage);

</script>