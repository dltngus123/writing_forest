<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!-- Main Sidebar Container -->
		<aside class="main-sidebar " style="background-color: white;">
			<!-- Sidebar -->
			<div class="sidebar">
			    <a class="nav-link" data-toggle="dropdown" href="#" style="display:flex; justify-content:end;">
   		     	   <i class="far fa-bell"></i>
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
							<button type="button" class="btn btn-block"
								style="background-color: rgba(100, 183, 0, 0.75); color:white" onclick="세션종료" >로그아웃</button>
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
										data-toggle="collapse" data-target="#collapse3"
										aria-expanded="false" aria-controls="collapse3"
										style="color: rgba(100, 183, 0, 0.75);">-회원 관리-</button>
								</h2>
							</div>
							<div id="collapse3" class="collapse"
								aria-labelledby="headingTwo" data-parent="#accordion">
								<div class="card-body">
									<a href="<%=request.getContextPath() %>/manager/help/question/list.do" style="display: block; color: rgb(156, 163, 175);">문의관리</a>
									<a href="#" style="display: block; color: rgb(156, 163, 175);">신고관리</a>
									<a href="#" style="display: block; color: rgb(156, 163, 175);">작가심사</a>
								</div>
							</div>
						</div>
					</div>
				</nav>

				<nav class="mt-2" style="margin: 15px;">
					<div class="accordion" id="accordion">
						<div id="card" style="text-align: center;">
							<div class="card-header" id="headingTwo">
								<h2 class="mb-0">
									<button onclick="notice_go();"class="btn btn-link collapsed" type="button"
										data-toggle="collapse" data-target="#collapse4"
										aria-expanded="false" aria-controls="collapse4"
										style="color: rgba(100, 183, 0, 0.75);">-공지 사항-</button>
								</h2>
							</div>
<!-- 							<div id="collapse4" class="collapse"
								aria-labelledby="headingTwo" data-parent="#accordion">
								<div class="card-body"></div>
							</div> -->
						</div>
					</div>
				</nav>

				<nav class="mt-2" style="margin: 15px;">
					<div class="accordion" id="accordion">
						<div id="card" style="text-align: center;">
							<div class="card-header" id="headingTwo">
								<h2 class="mb-0">
									<button onclick="fnq_go();" class="btn btn-link collapsed" type="button"
										data-toggle="collapse" data-target="#collapse6"
										aria-expanded="false" aria-controls="collapse6"
										style="color: rgba(100, 183, 0, 0.75);">-자주 묻는 질문-</button>
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
									<button onclick="write_go();"class="btn btn-link collapsed" type="button"
										data-toggle="collapse" data-target="#collapse2"
										aria-expanded="false" aria-controls="collapse2"
										style="color: rgba(100, 183, 0, 0.75);">-글숲 나우-</button>
								</h2>
							</div>
<!-- 							<div id="collapse2" class="collapse"
								aria-labelledby="headingTwo" data-parent="#accordion">
								<div class="card-body"></div>
							</div> -->
						</div>
					</div>
				</nav>
				
				<nav class="mt-2" style="margin: 15px;">
					<div class="accordion" id="accordion">
						<div id="card" style="text-align: center;">
							<div class="card-header" id="headingTwo">
								<h2 class="mb-0">
									<button onclick="fund_go();" class="btn btn-link collapsed" type="button"
										data-toggle="collapse" data-target="#collapse5"
										aria-expanded="false" aria-controls="collapse5"
										style="color: rgba(100, 183, 0, 0.75);">-크라우드 펀딩-</button>
								</h2>
							</div>
<!-- 							<div id="collapse5" class="collapse"
								aria-labelledby="headingTwo" data-parent="#accordion">
								<div class="card-body"></div>
							</div> -->
						</div>
					</div>
				</nav>



				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>
		
<script>
	function notice_go(){
		location.href='<%=request.getContextPath()%>/manager/help/notice/list.do';
	}
	
	function fnq_go(){
		location.href='<%=request.getContextPath()%>/manager/help/fnq/list.do';
	}
	
	function wirte_go(){
		location.href='<%=request.getContextPath()%>/manager/write/list.do';
	}

	function fund_go(){
		location.href='<%=request.getContextPath()%>/manager/fund/list.do';
	}
</script>