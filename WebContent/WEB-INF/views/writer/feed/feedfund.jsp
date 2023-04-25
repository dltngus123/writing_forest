<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
#downwrap>#bestfund-layout>#inerlayout{
	display:flex;
	border:1px solid black;
}
#downwrap>#bestfund-layout>#inerlayout>#box{
	border:1px solid black; 
	height:200px;
	margin-left:5px;
	display:flex; 
	flex-direction:column;
}
#downwrap>#bestfund-layout>#inerlayout>#box>#img{
	border:1px solid black;
	height:100px;
	width:100px;
}
#downwrap>#bestfund-layout>#inerlayout>#box>#d-day{
	display:flex;
	justify-content:end;
}
#downwrap>#hotfund-layout>#inerlayout{
	display:flex;
	border:1px solid black;
}
#downwrap>#hotfund-layout>#inerlayout>#box{
	border:1px solid black; 
	height:200px;
	margin-left:5px;
	display:flex; 
	flex-direction:column;
}
#downwrap>#hotfund-layout>#inerlayout>#box>#img{
	border:1px solid black;
	height:100px;
	width:100px;
}
#downwrap>#hotfund-layout>#inerlayout>#box>#d-day{
	display:flex;
	justify-content:end;
}

#downwrap>#lastfund-layout>#inerlayout{
	display:flex;
	border:1px solid black;
}
#downwrap>#lastfund-layout>#inerlayout>#box{
	border:1px solid black; 
	height:200px;
	margin-left:5px;
	display:flex; 
	flex-direction:column;
}
#downwrap>#lastfund-layout>#inerlayout>#box>#img{
	border:1px solid black;
	height:100px;
	width:100px;
}
#downwrap>#lastfund-layout>#inerlayout>#box>#d-day{
	display:flex;
	justify-content:end;
}


</style>
<body>

       	<div id="downwrap" >
      		<hr/>
      		<div id="content"class="row">
				<div class="col-12">
					<div class="card">
					<div class="card-header">
					<h3 class="card-title">크라우드펀딩>전체목록</h3>
					</div>
					</div>
				
				<div id="card_body" class="card-body table-responsive p-0" >
					<ul id="fund_list"style="list-style-type:none;">
						<%-- <c:foreach> --%>
						<li id="fund_content" style="display:flex; justify-content:center;">
							<div id="title_img" style="height:80px; width:100px; border:1px solid black;margin:10px;">타이틀이미지자리</div>
							<div id="title" style="margin:30px;">제목자리</div>
							<div id="title_content" style="margin:50px;">간단한내용자리
							<div id="title_percent" style="display:block;">현재퍼센트</div>
							</div>
							<div id="writer_name" style="margin:30px;margin-left:100px;">작가명:${writer_name }
							<div id="d-day" style="margin:20px;">남은날짜 자리</div>
							</div>
						</li>
						<hr/>
						<%-- <c:foreach> --%>
					</ul>
				</div>
				
				
				</div>
			</div>
      			
      		</div>
      		
      		 <nav aria-label="Page navigation example" style="display:flex; justify-content:center; ">
		  <ul class="pagination">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>