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
input{
 
 width:300px;
}

span{
	margin-left:0px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    
}


.input-group {
  
  display: flex;
  justify-content: space-between;
}
.input-group>input{
  border:none;
  border-bottom:1px solid gray;
}

.input-group input {
  margin-left: auto;
}
div.footer-btn{
	height:200px;
	display:flex;
	justify-content: space-around;
}
div.emailInfo{
	font-size:12px;
	margin-top:10px;
	margin-left:110px;
	color:gray;

}
form{
	margin-top:30px;
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
 	<div class="card-header"style="text-align:center; height:100px;">비밀번호를 잊으셨나요?
 	 </br>아래 정보를 입력해주세요.</div>
  <div class="card-body text-success" style="height:400px;">
  	<form>
  		 <div class="card-footer" style="background-color:white; padding:20px;">
      <div class="input-group" style="width:400px; ">
        <span style="text-aline:center; margin-left:30px;">아이디</span>
        <input type="text" name="id" placeholder="아이디을 입력해주세요" >
        <span class="input-group-append">
        </span>
      </div>
    </div>
  		 <div class="card-footer" style="background-color:white; padding:20px;">
      <div class="input-group" style="width:400px; ">
        <span style="text-aline:center; margin-left:30px;">이메일</span>
        <input type="text" name="id" placeholder="exemple@naver.com" >
        	<div class="emailInfo">회원가입 시 기입하신 <br/> 이메일주소를 입력해주세요.</div>
        <span class="input-group-append">
        </span>
      </div>
    </div>
  	</form>     
    </div>
    <div class="footer-btn">
	<button type="button" class="btn btn-block btn-success btn-sm" style="background-color:gray;width:150px; height:40px; margin:0">취소</button>
	<button type="button" class="btn btn-block btn-success btn-sm" style="width:150px; height:40px; margin:0">이메일인증</button>
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
