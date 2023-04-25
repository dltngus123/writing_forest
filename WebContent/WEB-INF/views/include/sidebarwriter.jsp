<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!-- Main Sidebar Container -->
		<aside class="main-sidebar " style="background-color: white;">
			<!-- Sidebar -->
			<div class="sidebar">
			    <a class="nav-link" data-toggle="dropdown" href="#" style="display:flex; justify-content:end;">
   		     	   <i onclick="alram_go();"class="far fa-bell"></i>
        		</a>
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-10 mb-10"
					style="display: flex; justify-content: center; margin: 15px;">
					<ul class="image"
						style="list-style-type: none; flex-drection: row;">
						<li style="margin: 5px;">
							<div id="img"
								style="width: 100px; height: 100px; border: 1px solid black; border-radius: 50%;"><img src="<%=request.getContextPath() %>/common/getimg.do?member_id=${loginUser.member_id}"alt="User Image"
								style="width: 100%; height: 100%; object-fit: cover; border-radius: 50%;"></div>
						</li>
						<li style="margin: 5px;"><span class="user-name">${loginUser.member_nic }님
								환영합니다</span></li>
						<li style="margin: 5px;"><a class="users-email" href="#">${loginUser.member_email }입니다.</a>
						</li>
						<li style="margin: 5px;">
						<button type="button" class="btn btn-block" onclick="location.href='<%=request.getContextPath() %>/writer/write/registForm.do';"
								style="background-color: rgba(100, 183, 0, 0.75); color:white;">글 작성</button>
							<button type="button" onclick="logout_go();" class="btn btn-block"
								style="background-color: rgba(100, 183, 0, 0.75); color:white;">로그아웃</button>
						</li>
					</ul>
				</div>
				<hr/>
				<!-- Sidebar Menu -->
				
				<nav class="mt-2" style="margin: 15px;">
					<div class="accordion" id="accordion">
						<div id="card" style="text-align: center;">
							<div class="card-header" id="headingTwo">
								<h2 class="mb-0">
									<button class="btn btn-link collapsed" type="button"
										data-toggle="collapse" data-target="#collapse1"
										aria-expanded="false" aria-controls="collapse1"
										style="color: rgba(100, 183, 0, 0.75);"
										onclick="mypage_go();">-내 서랍-</button>
								</h2>
							</div>
						</div>
					</div>
				</nav>
				
				<nav class="mt-2" style="margin: 15px;">
					<div class="accordion" id="accordion">
						<div id="card" style="text-align: center;">
							<div class="card-header" id="headingTwo">
								<h2 class="mb-0">
									<button class="btn btn-link collapsed" type="button"
										data-toggle="collapse" data-target="#collapse2"
										aria-expanded="false" aria-controls="collapse2"
										style="color: rgba(100, 183, 0, 0.75);"
										onclick="writing_go();">-글숲 나우-</button>
								</h2>
							</div>
						</div>
					</div>
				</nav>
				
				<nav class="mt-2" style="margin: 15px;">
					<div class="accordion" id="accordion">
						<div id="card" style="text-align: center;">
							<div class="card-header" id="headingTwo">
								<h2 class="mb-0">
									<button class="btn btn-link collapsed" type="button"
										data-toggle="collapse" data-target="#collapse5"
										aria-expanded="false" aria-controls="collapse5"
										style="color: rgba(100, 183, 0, 0.75);"
										onclick="fund_go();">-크라우드 펀딩-</button>
								</h2>
							</div>
						</div>
					</div>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>
<script>
	function alram_go(){
		location.href='<%=request.getContextPath()%>/writer/my/message/alram.do';
	}
	function logout_go(){
		location.href='<%=request.getContextPath()%>/common/main.do';
	}

	function mypage_go(){
		location.href='<%=request.getContextPath()%>/writer/my/main.do';
	}
	function writing_go(){
		location.href='<%=request.getContextPath()%>/writer/write/list.do';
	}
	function fund_go(){
		location.href='<%=request.getContextPath()%>/writer/fund/list.do';
	}
</script>

