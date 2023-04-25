<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<style>
.content-wrapper>#downwrap>#questsion>#qheader>#qlay>#qcont{
	display:flex;
	flex-direction:column;
	margin:0 auto;
}
.content-wrapper>#downwrap>#questsion>#qheader>#qlay>#qcont>.form-group>#qbutton{
	background-color: rgba(100, 183, 0, 0.75);
	color:white;
}
</style>


   <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
      	<div style="display:flex; justify-content:end; margin:5px;">
	  		<section class="container-fluid">
		  		<div class="row md-12">
		  			<div class="col-sm-6">
		  				<h5>고객센터</h5>  				
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
					 		<option value="s">답변상태</option>
					 		<option value="i">아이디</option>
					 		<option value="t">제목</option>		 						
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
      		<div class="col-lg-12" style=" display:flex;">
      			<div class="col-sm-4" style="text-align:center;">
      			<a href="#" >공지사항</a>
      			</div>
      			<div class="col-sm-4" style="text-align:center; ">
				<a href="#">자주묻는 질문</a>
				</div>
      			<div class="col-sm-4" style="text-align:center; ">
      			<a href="#">문의하기</a>
      			</div>
      		</div>
      			<hr/>
      		<div class="col-md-12" id="questsion" >
      			<div class="row" id="qheader">
				<div class="col-12" id="qlay">
				<div class="card">
				<div class="card-header">
				<h3 class="card-title">문의 수정</h3>
				</div>
				</div>
				
				<div class="col-8" id="qcont">
				<form role="form" method="post" action="modify.do">
					<input type="hidden" name="q_num" value="${question.q_num }" />
					<div class="form-group">
					<label for="inputTitle">문의 제목</label>
					<input type="text" id="inputName" name="q_title" class="form-control" value="${question.q_title }" >
					<hr/>
					</div>
					<div class="form-group">
					<label for="inputContent">문의 내용</label>
					<textarea id="inputMessage" name="q_content" class="form-control" rows="4" placeholder="500자 내외로 작성하세요.">${question.q_content }</textarea>
					<hr/>
					</div>
					<div class="form-group" style="text-align:right;">
					<input id="qbutton"type="submit" class="btn " style="background-color: rgba(100, 183, 0, 0.75);
						color:white;"onclick="modify_go();"value="수정완료">
					</div>
				</form>
					</div>

				
				</div>
				
				</div>
				</div>
      			
      		</div>
      	</div>
      	
      	
      	<script>
    function modify_go(){
	   $('form[role="form"]').submit();
	}
	</script>
