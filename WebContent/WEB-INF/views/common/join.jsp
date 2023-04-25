<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<!DOCTYPE html>
<html>
<head>
<style>

input{
 
 width:300px;
}

span{
	margin-left:0px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    
}
div#card-footer{
 display: flex;
 justify-content: space-between;
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
	display:flex;
	justify-content: space-around;
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
  <p style="margin:0; font-size:30px; color:rgba(100, 183, 0, 0.75);">Write Forest</p><p>회원가입</p>
</div>
<div class="card border-success mb-3" style="width:600px;height:600px; margin:0 auto;">
  <form role="form" method="get" action="join2Form.do">
  <div class="card-body text-success">
      
    	<div class="card-footer" style="background-color:white; padding:20px;">
        <div class="input-group" style="width:500px;">
          <span style="text-aline:center;margin-right: 50px;">아이디</span>
          <input onkeyup="this.value=this.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, &#39;&#39;);" 
          type="text" name="member_id" placeholder="13글자 영문자,숫자 조합" style="width:200px; margin-right:34px;"  >
          <span><button type="button" onclick="idCheck_go();"class="btn btn-block btn-success btn-sm">중복확인</button></span>
          
         
        </div>
    </div>
    <div class="card-footer" style="background-color:white; padding:20px;">
      <div class="input-group" style="width:500px; ">
        <span style="text-aline:center;margin-right: 50px;">비밀번호</span>
        <input type="password" name="member_pwd" placeholder="비밀번호를 입력하세요" >
        <span class="input-group-append">
        </span>
      </div>
    </div>
    <div class="card-footer" style="background-color:white; padding:20px;">
      <div class="input-group" style="width:500px;">
        <span style="text-aline:center; margin-right: 50px;">비밀번호 확인</span>
        <input type="password" name="member_pwd2" placeholder="비밀번호를 한번 더 입력해주세요" >
        <span class="input-group-append">
        </span>
      </div>
    </div>
    <div class="card-footer" style="background-color:white; padding:20px;">
      <div class="input-group" style="width:500px;">
        <span style="text-aline:center;margin-right: 100px;">이름</span>
        <input type="text" name="member_name" placeholder="이름을 입력해주세요" >
        <span class="input-group-append">
        </span>
      </div>
    </div>
    <div class="card-footer" style="background-color:white; padding:20px;">
      <div class="input-group" style="width:500px;">
        <span style="text-aline:center;margin-right: 50px;">이메일</span>
        <input type="text" name="member_email" placeholder="exemple@naver.com" >
 
        <span class="input-group-append">
        </span>
      </div>
    </div>
    <div class="card-footer" style="background-color:white; padding:20px;">
      <div class="input-group" style="width:500px;">
        <span style="text-aline:center;margin-right: 50px;">생년월일</span>
        <input type="text" name="member_birth" placeholder="EX) 991010">
        <span class="input-group-append">
        </span>
      </div>
    </div>
    <div class="card-footer" style="background-color:white; padding:20px;">
      <div class="input-group" style="width:500px;">
        <span style="text-aline:center;margin-right: 50px;">전화번호</span>
        <input type="text" name="member_phone" placeholder="전화번호를 '-'을 제외하고 입력해주세요" >
        <span class="input-group-append">
        </span>
        
      </div>
    </div>
    </div>
    </br>
    <div class="footer-btn">
	<button type="button" onclick="window.close();"class="btn btn-block btn-success btn-sm" style="border-style:none; background-color:gray;width:200px; height:40px; margin:0">취소</button>
	<button type="button" onclick="regist_go();" class="btn btn-block btn-success btn-sm" style="width:200px; height:40px; margin:0">다음단계</button>
  </div>

  	</form>
  </div>
  
  
  

<script>
var checkedID ="";	
function idCheck_go(){
	//alert("id check");
	var member_id=$('input[name="member_id"]');
	//alert(id);
	
	if(!member_id.val()){
	  alert("아이디를 입력하시오");
	  member_id.focus();
	  return;
	}
	
	$.ajax({
		url:"idcheck.do",
		method:"get",
		data:"member_id="+member_id.val().trim(),
		success:function(data){
		 	if(data.toUpperCase() == "DUPLICATED"){
		 		alert("중복된 아이디 입니다."); 
			}else{
			    alert("사용가능한 아이디 입니다.");
			    checkedID=member_id.val().trim();
			}
		},
		error:function(error){
			alert(error.status);
		}
	});
}
function regist_go(){
	//alert("regist btn");
	
	
	if(!$('input[name="member_id"]').val()){
	    alert("아이디는 필수입니다.");
	    return;
	}
	if($('input[name="member_id"]').val()!=checkedID){
	    alert("아이디는 중복 확인이 필요합니다.");
	    return;
	}
	
	var form = $('form[role="form"]');
	form.attr("action","join2Form.do").submit();
	
}
</script>

  
  
  
  
  
  
  
  
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- common.js -->
<script src="<%=request.getContextPath() %>/resources/js/common.js"></script>

</body>

</html>
