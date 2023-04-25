<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri}" />
<c:set var="fundingList" value="${dataMap.fundingList }"/>
<style>
.content-wrapper>#feedwrap{
   height:1300px;
}
.content-wrapper>#feedwrap>#feedhead{
   height:200px;
   background-color:rgba(100, 183, 0, 0.75);
   position:relative;
}
.content-wrapper>#feedwrap>#userimg{
   height:150px;
   width:150px;
   display:inline-block;
   border-radius: 50%;
   position:absolute;
   top:150px;
   left:300px;
}
.content-wrapper>#feedwrap>#feedbody>#follow{
   display:flex;
}
.content-wrapper>#feedwrap>#feedbody>#body-title{
   display:flex;
   margin-left:500px;
}
</style>
<div class="content-wrapper">
   <div id="feedwrap" class="col-md-12">
   <div id="feedhead"class="col-md-12">
   </div>
      <div id="userimg" class="col-sm-3"><img src="<%=request.getContextPath() %>/common/getimg.do?member_id=${loginUser.member_id}"alt="User Image"
								style="width: 100%; height: 100%; object-fit: cover; border-radius: 50%;"></div>
   <div id="feedbody" class="col-md-12">
      <div id="follow"class="col-md-12" style="margin-bottom:10px;text-align:center;">
      <div id="name"class="col-md-7" style="font-size:1.5rem;margin:30px;">${loginUser.member_nic }님
      <div id="pr" class="col-md-6" style="font-size:1rem;text-align:right;">${loginUser.member_pr }</div>
      </div>
      </div>
      <div class="col-md-12" style="display:flex;justify-content:left;margin-bottom:30px;">
         <div class="col-sm-1" style="margin-left:430px;"><a href="#">구독자</a>
         <div>0</div></div>
         <div class="col-sm-1"><a href="#">관심작가</a>
         <div>0</div></div>
         <div style="margin-left:600px;">
          <c:if test="${loginUser.member_id eq member_id }">
            <input id="fbutton"type="submit" class="btn " value="구독" style="background-color: rgba(100, 183, 0, 0.75);color:white;"/>      
         </c:if>
         </div>
      </div>
         <hr/>
         <div id="body-title"class="col-md-10">
            <div class="col-md-4"><a href="main.do?member_id=${loginUser.member_id }">글</a></div>
            <div class="col-md-4"><a href="fund.do?member_id=${loginUser.member_id }">펀딩</a></div>
         </div>
         <hr/>
         <table class="table table-hover text-nowrap">
        <thead>
            <tr>
            <th></th>
            <th>제목</th>
            <th>소제목</th>
            <th>작성자</th>
            <th>펀딩기간</th>
            </tr>
            </thead>
            <tbody>
           <c:forEach items="${fundingList }" var="funding">
             <c:if test="${loginUser.member_id eq funding.member_id}">
            <tr>
            <td>
               <div id="img" style="width: 100px; height: 100px;">
                  <img src="<%=request.getContextPath() %>/common/getimg.do?fun_img=${funding.fun_img }"></div>
            </td>
            <td><a href="<%=request.getContextPath()%>/writer/fund/detail.do?fun_num=${funding.fun_num}">${funding.fun_title }</a></td>
            <td>${funding.fun_stitle }</td>
            <td>작가명 : ${funding.member_id }</td>
            <td>펀딩 기간 : <fmt:formatDate value="${funding.fun_regDate }" pattern="yyyy/MM/dd"/>~<fmt:formatDate value="${funding.fun_endDate}" pattern="yyyy/MM/dd"/></td>
            </tr>
            </c:if>
            </c:forEach>
            </tbody>
            </table>
         
   </div>
   </div>
</div>
<script>
   function goPage(url){
   //alert(url);
   $('iframe[name="ifr"]').attr("src",url);
   }

</script>