<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="writingList" value="${writeMap.writingList}" />
    <c:set var="memberList" value="${dataMap.memberList}" />
<style>
#content-wrapper > #writing-random {
  border: 1px solid black;
  display: flex;
  margin: 15px;
}
#content-wrapper > #writing-random > span {
  border: 1px solid black;
  height: 300px;
}
#content-wrapper > #writing-random > #button {
  color: gray;
  display: felx;
  justify-content: center;
  margin: auto;
  padding: auto;
}
#content-wrapper > span {
  display: flex;
}
#content-wrapper > span > #bestwriter > #title {
  text-align: center;
}
#content-wrapper > span > #bestwriter > #title-name {
  text-align: center;
}
#content-wrapper > span > #bestwriter > #random-member {
 
  display: flex;
  align-items: stretch;
  margin: 5px;
}
#content-wrapper > span > #bestwriter > #random-member > span {
 
  width: 300px;
  height: 200px;
  margin: 5px;
}
#content-wrapper > span > #bestfund > #title {
  text-align: center;
}
#content-wrapper > span > #bestfund > #title-name {
  text-align: center;
}
#content-wrapper > span > #bestfund > #random-fun {
  border: 1px solid black;
  display: flex;
  margin: 5px;
}
#content-wrapper > span > #bestfund > #random-fun > span {
  border: 1px solid black;
  width: 300px;
  height: 200px;
  margin: 5px;
}

</style>


  <div class="content-wrapper" id="content-wrapper">
         <div class="col-md-12" id="writing-random">
<c:forEach var="i" begin="1" end="6">
            <c:set var="randomIndex" value="${Math.floor(Math.random() * writingList.size())}" />
            <c:if test="${i <= writingList.size() and writingList[randomIndex].member_id != loginuser.member_id}">
                <span class="md-2" style="position:relative; height:300px; width:500px;">
                	<a href="<%=request.getContextPath() %>/writer/write/detail.do?writing_num=${writingList[randomIndex].writing_num}">
                    <div id="img" style="width: 100%; height: 100%;">
                        <img src="<%=request.getContextPath() %>/writer/write/getimg.do?writing_num=${writingList[randomIndex].writing_num}" style="width: 100%; height: 100%; odject-fit:cover; rgba:0,0,0,80;">
                    </div>
					<div style="position: absolute; top: 0; left: 0; height: 100%; width: 100%; display: flex; flex-direction: column; justify-content: end;">
                    <div style="color:white;">글제목:${writingList[randomIndex].writing_title}</div>
                    <div style="color:white;">소제목:${writingList[randomIndex].writing_stitle}</div>
                    </div>
                    </a>
                </span>
            </c:if>
        </c:forEach>
         </div>
         <span class="col-md-12">
         
        <div id="bestwriter" class="col-md-6">


    <div id="title">writeforest</div>
    <div id="title-name">작가 추천</div>
    <div class="md-12" id="random-member">
        <c:forEach var="i" begin="1" end="5">
            <c:set var="randomIndex" value="${Math.floor(Math.random() * memberList.size())}" />
            <c:if test="${i <= memberList.size() and not memberList[randomIndex].member_id and memberList[randomIndex].member_authority == 1 and memberList[randomIndex].member_id != loginuser.member_id}">
                <span class="md-2">
                    <div id="img" style="width: 100px; height: 100px;border-radius: 50%;">
                        <img src="<%=request.getContextPath() %>/common/getimg.do?member_id=${memberList[randomIndex].member_id}" style="width: 100%; height: 100%; odject-fit:cover;border-radius: 50%;">
                    </div>

                    <a href="">작가명:${memberList[randomIndex].member_name}</a>
                    <div class="md-2">관심장르:${memberList[randomIndex].member_category}</div>
                </span>
            </c:if>
        </c:forEach>
    </div>
</div>


    
         <div id="bestfund" class="col-md-6">
            <div id="title">writeforest</div>
            <div id="title-name">펀딩 추천</div>
            <div class="md-12" id="random-fun">
               <span class="md-2" >
                <img src="<%=request.getContextPath()%>/resources/images/책.jpg" style="width:130px;height:130px;">
                <div>나만의 책 만들기</div>
            <div class="col-md-12" style="text-align:right;">
               <span id="innerpeople">50</span>
               <span>/</span>
               <span id="capacity">100</span>
            </div>
            
            <div id="progress"class="progress progress-xs progress-striped active">
            <div id="bar"class="progress-bar bg-success" style="width: 1%"></div>
            </div>
               </span>
               <span class="md-2" >
                <img src="<%=request.getContextPath()%>/resources/images/책2.jpg" style="width:130px;height:130px;">
                                <div>요리책만들기</div>
            <div class="col-md-12" style="text-align:right;">
               <span id="innerpeople">80</span>
               <span>/</span>
               <span id="capacity">100</span>
            </div>
            
            <div id="progress2"class="progress progress-xs progress-striped active">
            <div id="bar"class="progress-bar bg-success" style="width: 80%"></div>
            </div>
               </span>
               <span class="md-2" >
                     <img src="<%=request.getContextPath()%>/resources/images/요들.jpg" style="width:130px;height:130px;">
                <div>강아지 마스터</div>
            <div class="col-md-12" style="text-align:right;">
               <span id="innerpeople">90</span>
               <span>/</span>
               <span id="capacity">100</span>
            </div>
            
            <div id="progress"class="progress progress-xs progress-striped active">
            <div id="bar"class="progress-bar bg-success" style="width: 90%"></div>
            </div>
               </span>
               <span class="md-2" >
                     <img src="<%=request.getContextPath()%>/resources/images/퇴근.jpg" style="width:130px;height:130px;">
                <div>퇴근 시켜줘</div>
            <div class="col-md-12" style="text-align:right;">
               <span id="innerpeople">15</span>
               <span>/</span>
               <span id="capacity">100</span>
            </div>
            
            <div id="progress"class="progress progress-xs progress-striped active">
            <div id="bar"class="progress-bar bg-success" style="width: 15%"></div>
            </div>
               </span>
               <span class="md-2" >
                     <img src="<%=request.getContextPath()%>/resources/images/123.jpg" style="width:130px;height:130px;">
                <div>살려주세요</div>
            <div class="col-md-12" style="text-align:right;">
               <span id="innerpeople">60</span>
               <span>/</span>
               <span id="capacity">100</span>
            </div>
            
            <div id="progress"class="progress progress-xs progress-striped active">
            <div id="bar"class="progress-bar bg-success" style="width: 60%"></div>
            </div>
               </span>
            </div>
      </div>
      </span>
      </div>
         
      </div>
      
     