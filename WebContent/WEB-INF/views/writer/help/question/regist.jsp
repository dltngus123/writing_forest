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
  		
   		</div>		
      	<div id="downwrap" >
      		<hr/>
      		<div class="col-lg-12" style=" display:flex;">
      			<div class="col-sm-4" style="text-align:center;">
      			<a href="<%=request.getContextPath() %>/writer/help/notice/list.do" >공지사항</a>
      			</div>
      			<div class="col-sm-4" style="text-align:center; ">
				<a href="<%=request.getContextPath() %>/writer/help/fnq/list.do">자주묻는 질문</a>
				</div>
      			<div class="col-sm-4" style="text-align:center; ">
      			<a href="<%=request.getContextPath() %>/writer/help/question/list.do?member_id=${loginUser.member_id }">문의하기</a>
      			</div>
      		</div>
      			<hr/>
      		<div class="col-md-12" id="questsion" >
      			<div class="row" id="qheader">
				<div class="col-12" id="qlay">
				<div class="card">
				<div class="card-header">
				<h3 class="card-title">문의하기</h3>
				</div>
				</div>
				
				<div class="col-8" id="qcont">
				<form role="form" method="post" action="regist.do" >
					<input type="hidden" name="member_id" value="${loginUser.member_id }"/>
					<input type="hidden" name="q_num" value="${question.q_num}" />
					<input type="hidden" name="keyword" value="${loginUser.member_id }" />
					
					<div class="form-group">
					<label for="inputTitle">문의 제목</label>
					<input type="text" name="q_title"id="inputName" class="form-control">
					<hr/>
					</div>
					<div class="form-group">
					<label for="inputContent">문의 내용</label>
					<textarea id="inputMessage" name="q_content"class="form-control" rows="4"></textarea>
					<hr/>
					</div>
					</form>
					<div class="col-md-12" style="display:flex; justify-content:end;">
					<div class="col-md-1">
					 <button  class="btn " onclick="location.href='list.do?member_id=${loginUser.member_id}';" style="background-color:rgb(192, 57, 43);color:white;">취소 </button>	
					</div>
					<div class="form-group" >
					<button id="qbutton"type="button" class="btn " onclick="regist_go();"style="background-color: rgba(100, 183, 0, 0.75);
						color:white;" >문의 접수</button>
					</div>
					</div>
					
					</div>
				
				</div>
				
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
		
<script>
	
	function regist_go(){
		$('form[role="form"]').submit();
	}
	
</script>