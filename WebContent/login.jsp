<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<!DOCTYPE html>
<html>
<head>

<!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">

  <style>
    /* CSS 코드 */
    button{
    	margin-top: 150px;
    }
    input#id{
    	margin-top:50px;
    }
    input#password{
    	margin-top:50px;
    }
    div#qq{
    	margin-top:30px;
    }
    a#tlqkf{
    	margin-right:100px;
    	color:blcak;
    }
    
    body {
      background-color: White;
      font-family: "Apple SD Gothic Neo", "Malgun Gothic", sans-serif;
    }
    .container {
      width: 400px;
      margin: 0 auto;
      text-align: center;
    }
    .logo {
      margin-top: 80px;
      margin-bottom: 40px;
       margin-left:-60px;

      width:500px;
      color: rgba(100, 183, 0, 0.75);
      font-size:30px;
      border-bottom:2px solid gray;
     
      
    }
   
    }
    .login-form {
      background-color: white;
      border-radius: 10px;
      
      padding: 20px;
    }
    .login-form input {
      display: block;
      width: 100%;
      height: 60px;
      border-radius: 5px;
      border: solid 1px #e5e5e5;
      padding-left: 10px;
    }
    .login-form input:focus {
      outline-color:#ffd200; 
    }
   div#dirrhks{
    margin-left:-60px;
    width:500px;
   	margin-top:70px;
   	border:none; border-bottom:2px solid gray
   }
   
   </style>
   
</head>
<body class="hold-transition sidebar-mini layout-boxed">
<div class="container">
<div class="logo">
<p>Write Forest</p>
</div>
<div class="login-form">
<input type="text" style="border:none; border-bottom:1px solid gray;  background: transparent;" name="id" placeholder="아이디">

<input type="password" style="border:none; border-bottom:1px solid gray;  background: transparent;" id="password" name="password" placeholder="비밀번호">
<button type="button" class="btn btn-block btn-primary btn-lg" style="background:rgba(100, 183, 0, 0.75); border:none;">로그인</button>
<div id="qq">
<a id="tlqkf" href="#" style="color:black">회원가입</a> <a href="#" style="color:black">아이디찾기</a>&nbsp;&nbsp;&nbsp;<a href="#" style="color:black">비밀번호찾기</a>
</div>
</div>
<div id="dirrhks"></div>

<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath() %>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- common.js -->
<script src="<%=request.getContextPath() %>/resources/js/common.js"></script>