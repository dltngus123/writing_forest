<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<!DOCTYPE html>
<html>
<head>
<style>
div.card-header{
	border-style:2px outset black;
	display:flex;
	justify-content:center; 
	align-items:center;
	color:gray;

}

div.footer-btn{
	height:200px;
	display:flex;
	justify-content: space-around;
}
div.resultid{
	color:black;
	font-size:20px;
	text-align:center; 
	display:flex; 
	flex-direction:column; 
	justify-content:center; 
	align-items: center;
	height:250px;
}
div>p{
	font-size:30px;
	color:blue;
}

</style>

<!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
<body>
<div style="text-align:center;">
  <p style="margin:0; font-size:30px; color:rgba(100, 183, 0, 0.75);">Write Forest</p>
  </br>
</div>
<div class="card border-success mb-3" style="width:500px;height:500px; margin:0 auto;">
 	<div class="card-header"style="text-align:center; height:100px;">아이디를 잊으셨나요?</div>
  <div class="card-body text-success" style="height:400px;">
  <div class="resultid">
  		회원님의 찾으신 아이디는
  		<br/>
  		<p>syon13</p> 입니다.
  </div>     
    </div>
    <div class="footer-btn">
	<button type="button" class="btn btn-block btn-success btn-sm" style="background-color:gray;width:150px; height:40px; margin:0">로그인화면</button>
	<button type="button" class="btn btn-block btn-success btn-sm" style="width:150px; height:40px; margin:0">비밀번호찾기</button>
  </div>
  </div>

  



  
  
  
  
  
  
  
  
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- common.js -->
<script src="<%=request.getContextPath() %>/resources/js/common.js"></script>

</body>

</html>
