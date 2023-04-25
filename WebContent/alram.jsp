<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<style>
.content-wrapper>#message-content>#title{
   text-align:center;
   margin:40px;
}
.content-wrapper>#message-content>ul{
   display:flex;
   justify-content:center;
   list-style-type: "○";
   margin-top:100px;
   
}
.content-wrapper>#message-content>ul>li>#content{
   font-weight:bold;
   margin:25px;
}
.content-wrapper>#message-content>ul>li>#day{
   margin-left:60px;
}
.content-wrapper>#message-content>ul>li>#detail{
   margin-top:15px;
   text-align:center;
}
</style>
<div class="content-wrapper">

<div id="message-content" class="col-md-12">
   <h5 id="title">알림</h5>
<ul>
   <%-- <c:forEach> --%>
   <li>
   <hr/>
      <span id="content"><a href="">~님이</a> 회원님의 글을 좋아합니다?</span>
      <span id="day">~월~일~시자리</span>
      <div id="detail"><a href="">~님이</a> 회원님의 <a href="">~글</a>을 좋아합니다</div>
   <hr/>
   </li>
   <%-- </c:forEach> --%>
</ul>

</div>

</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>