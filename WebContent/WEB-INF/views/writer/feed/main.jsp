<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="writingList" value="${dataMap.writingList}" />
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
.listBox{
  
  width:800px;
  height:auto;
  

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
         <div>숫자</div></div>
         <div class="col-sm-1"><a href="#">관심작가</a>
         <div>숫자</div></div>
         <div style="margin-left:600px;" >
          <c:if test="${loginUser.member_id eq member_id }">
            <input id="fbutton"type="submit" class="btn " value="구독" style="background-color: rgba(100, 183, 0, 0.75);color:white;"/>      
         </c:if>
          <input id="fbutton"type="submit" onclick="modify_go();" class="btn " value="수정" style="background-color: rgba(100, 183, 0, 0.75);color:white;"/> 
         </div>
      </div>
         <hr/>
         <div id="body-title"class="col-md-10">
            <div class="col-md-4"><a href="javascript:goPage(writer_feedwritelist);">글</a></div>
            <div class="col-md-4"><a href="fund.do?member_id=${loginUser.member_id }">펀딩</a></div>
         </div>
         <hr/>
         <div class="card-body table-responsive p-0" style="margin-left:400px;">
        
      <div class="listBox">
     <c:forEach items="${writingList }" var="writing">
         <c:if test="${loginUser.member_id eq writing.member_id}">
           <a style="color:black;"href="detail.do?writing_num=${writing.writing_num }">
           <div style="height:170px;" class="write" >
              <div  style=" margin-top:10px;width:150px;height:150px;float:left;"class="writeImg" data-id="${writing.writing_num }"></div>
              <span style=" width:500px;height:50px; float:left;"class="title">${writing.writing_title }</span>
              <span style=" width:500px;height:30px;float:left;"class="stitle">${writing.writing_stitle }</span><br>
              <br><br><br>
               <span style="width:100px;height:30px;"class="writerNic" id="writerNic" >${writing.member_id }</span>
                <span style="width:100px;height:30px;"class="writedate" id="writedate" > <fmt:formatDate value="${writing.writing_date }" pattern="yyyy-MM-dd"/></span>
                <span style="width:50px;height:30px;"class="like">❤︎</span><span class=likecount>0</span>
           </div></a>
               
         </c:if>
        </c:forEach>
        </div>

                  
            
            </div>
         
   </div>
   </div>
   
  
</div>

<script>
window.onload=function(){
	WirteImgThumb('<%=request.getContextPath()%>');
}
   function modify_go(){
      location.href='<%=request.getContextPath() %>/writer/my/modify.do';
   }
   
</script>
