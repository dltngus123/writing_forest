<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<style>
/* CSS 코드 */
button {
	margin-top: 150px;
}

input#id {
	margin-top: 50px;
}

input#password {
	margin-top: 50px;
}

div#qq {
	margin-top: 30px;
}

a#tlqkf {
	margin-right: 100px;
	color: blcak;
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
	margin-left: -60px;
	width: 500px;
	color: rgba(100, 183, 0, 0.75);
	font-size: 30px;
	border-bottom: 2px solid gray;
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
	outline-color: #ffd200;
}

div#dirrhks {
	margin-left: -60px;
	width: 500px;
	margin-top: 70px;
	border: none;
	border-bottom: 2px solid gray
}
</style>

</head>

	<div class="container">
		<div class="logo">
			<p>Write Forest</p>
		</div>
		<div class="login-form">
		   <form method="post" action="login.do">
			<input type="text"
				style="border: none; border-bottom: 1px solid gray; background: transparent;"
				name="member_id" placeholder="아이디"> 
		     <input type="password"
				style="border: none; border-bottom: 1px solid gray; background: transparent;"
				 name="member_pwd" placeholder="비밀번호" value="">
			<button type="submit" class="btn btn-block btn-primary btn-lg"
				style="background: rgba(100, 183, 0, 0.75); border: none;">로그인</button>
			<div id="qq">
				<a id="tlqkf" href="joinForm.do" style="color: black">회원가입</a> 
				<a href="forgetID.do"
					style="color: black">아이디찾기</a>&nbsp;&nbsp;&nbsp;<a href="forgetPwd.do"
					style="color: black">비밀번호찾기</a>
			</div>
			</form>
		</div>
		<div id="dirrhks"></div>
	</div>