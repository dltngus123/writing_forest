<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.content-wrapper>#downwrap>#bestfund-layout>#inerlayout{
	display:flex;
	border:1px solid black;
}
.content-wrapper>#downwrap>#bestfund-layout>#inerlayout>#box{
	border:1px solid black; 
	height:200px;
	margin-left:5px;
	display:flex; 
	flex-direction:column;
}
.content-wrapper>#downwrap>#bestfund-layout>#inerlayout>#box>#img{
	border:1px solid black;
	height:100px;
	width:100px;
}
.content-wrapper>#downwrap>#bestfund-layout>#inerlayout>#box>#d-day{
	display:flex;
	justify-content:end;
}
.content-wrapper>#downwrap>#hotfund-layout>#inerlayout{
	display:flex;
	border:1px solid black;
}
.content-wrapper>#downwrap>#hotfund-layout>#inerlayout>#box{
	border:1px solid black; 
	height:200px;
	margin-left:5px;
	display:flex; 
	flex-direction:column;
}
.content-wrapper>#downwrap>#hotfund-layout>#inerlayout>#box>#img{
	border:1px solid black;
	height:100px;
	width:100px;
}
.content-wrapper>#downwrap>#hotfund-layout>#inerlayout>#box>#d-day{
	display:flex;
	justify-content:end;
}

.content-wrapper>#downwrap>#lastfund-layout>#inerlayout{
	display:flex;
	border:1px solid black;
}
.content-wrapper>#downwrap>#lastfund-layout>#inerlayout>#box{
	border:1px solid black; 
	height:200px;
	margin-left:5px;
	display:flex; 
	flex-direction:column;
}
.content-wrapper>#downwrap>#lastfund-layout>#inerlayout>#box>#img{
	border:1px solid black;
	height:100px;
	width:100px;
}
.content-wrapper>#downwrap>#lastfund-layout>#inerlayout>#box>#d-day{
	display:flex;
	justify-content:end;
}

</style>
 <div class="content-wrapper">
      	<div style="display:flex; justify-content:end; margin:5px;">
	  		<section class="container-fluid">
		  		<div class="row md-12">
		  			<div class="col-sm-6">
		  				<h5>크라우드 펀딩</h5>  				
		  			</div>
			  		</div>
			  	</section>
  		<div id="keyword" class="card-tools" style="width:600px; ">
   					 <div class="input-group row">
   					 	<!-- search bar -->
   					 	<!-- sort num -->
					  	<select class="form-control col-md-4" name="perPageNum" id="perPageNum" onchange="">					  		  		
					  		<option value="10" selected="">정렬개수</option>
					  		<option value="2">2개씩</option>
					  		<option value="3">3개씩</option>
					  		<option value="5">5개씩</option>
					  	</select>
					  	
					  	
					  	<!-- search bar -->
					 	<select class="form-control col-md-4" name="searchType" id="searchType">
					 		<option value="">검색구분</option>
					 		<option value="">높은 퍼센트순</option>
					 		<option value="">최신순</option>
					 		<option value="">마감임박순</option>			 						
						</select>
						<!-- keyword -->
   					 	<input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="">
						<span class="input-group-append">
							<button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1);">
								<i class="fa fa-fw fa-search"></i>
							</button>

						</span>
					<!-- end : search bar -->		
   					 </div>
   				</div>
   		</div>		
      	<div id="downwrap" >
      		<hr/>
      		<div id="bestfund-layout"class="col-lg-12">
      			<h5>핫한 펀딩</h5>
      			<div id="inerlayout">
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			</div>
      		</div>
      			<hr/>
      			<div id="hotfund-layout"class="col-lg-12">
      			<h5>따끈따끈한 펀딩</h5>
      			<div id="inerlayout">
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			</div>
      		</div>
      			<hr/>
      			<div id="lastfund-layout"class="col-lg-12">
      			<h5>따끈따끈한 펀딩</h5>
      			<div id="inerlayout">
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
      			</div>
      			<div id="box"class="col-md-2" >
      				<div id="img">이미지</div>
      				<div id="title">제목</div>
      				<div id="content" >간단한내용</div>
      				<div id="target">목표</div>
      				<div id="d-day" >남은기간</div>
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
</div>