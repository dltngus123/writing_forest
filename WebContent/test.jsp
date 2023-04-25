<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글숲</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
   href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
<!-- iCheck -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
<!-- JQVMap -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/jqvmap/jqvmap.min.css">
<!-- Theme style -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition layout-fixed">
   <div class="wrapper">

      <!-- Preloader -->
      <div
         class="preloader flex-column justify-content-center align-items-center">
         <img class="animation__shake" src="dist/img/AdminLTELogo.png"
            alt="AdminLTELogo" height="60" width="60">
      </div>

      <!-- Navbar -->
      <nav class="main-header navbar navbar-expand navbar-white "
         style="background-color: white;">
         <!-- Left navbar links -->
         <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" data-widget="pushmenu"
               href="#" role="button"><i class="fas fa-bars"
                  style="color: black;"></i></a></li>
            <li class="nav-item d-none d-sm-inline-block"><a href="#"
               class="nav-link" style="color: black;">WriTeForest</a></li>
         </ul>
         <!-- center navbar links -->
         <ul class="navbar-nav ml-auto">
            <li class="nav-item d-none d-sm-inline-block">
               <div class="navbar-home" style="font-size: 2rem;">
                  <a href="#" style="display: block; color: rgb(100, 183, 0);">WriTeForest</a>
               </div>
            </li>
         </ul>
         <!-- Right navbar links -->
         <ul class="navbar-nav ml-auto">
            <!-- Navbar Search -->
            <li class="nav-item">
               <div class="input-group" data-widget="sidebar-search">
                  <input class="form-control " type="search" placeholder="Search"
                     aria-label="Search">
                  <div class="input-group-append">
                     <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                     </button>
                  </div>
               </div>
            </li>
         </ul>
      </nav>
      <!-- /.navbar -->


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
								style="width: 100px; height: 100px; border: 1px solid black; border-radius: 50%;"></div>
						</li>
						<li style="margin: 5px;"><span class="user-name">${member.name }님
								환영합니다</span></li>
						<li style="margin: 5px;"><a class="users-email" href="#">${member.email }입니다.</a>
						</li>
						<li style="margin: 5px;">
							<button type="button" class="btn btn-block"
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
										style="color: rgba(100, 183, 0, 0.75);">-내 서랍-</button>
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
										style="color: rgba(100, 183, 0, 0.75);">-글숲 나우-</button>
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
										style="color: rgba(100, 183, 0, 0.75);">-크라우드 펀딩-</button>
								</h2>
							</div>
						</div>
					</div>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>





<style>
div{
	border:solid 1px black;
}
.container {  display: grid;
  grid-template-columns: 100%;
  grid-template-rows: 20% 80%;
  grid-auto-columns: 100%;
  grid-auto-rows: 100%;
  gap: 0px 0px;
  grid-auto-flow: row;
  grid-template-areas:
    "title-con"
    "content-con";
  width: 100%;
  height: 900px;
}

.title-con {  display: grid;
  grid-template-columns: 5% 95%;
  grid-auto-columns: 100%;
  grid-auto-rows: 100%;
  gap: 0px 0px;
  grid-auto-flow: row;
  grid-template-areas:
    "title-set"
    "title-con1";
}

.title-con1 {  display: grid;
  grid-template-columns: 100%;
  grid-template-rows: 20% 80%;
  grid-auto-columns: 100%;
  gap: 0px 0px;
  grid-auto-flow: row;
  grid-template-areas:
    "profil-area"
    "title-name";
}


.content-con {  display: grid;
  grid-template-columns: 5% 95%;
  grid-template-rows: 100%;
  gap: 0px 0px;
  grid-auto-flow: row;
  grid-template-areas:
    "content-set"
    "content-area";;
}

</style>





		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
		
		
		

<div class="container">
  <div class="title-con">
   	  <div class="title-set"></div>
    <div class="title-con1">

      <div class="profil-area"></div>
      <div class="title-name"></div>
    </div>
  </div>
  <div class="content-con">
    <div class="content-set"></div>
      <div class="content-area"></div>
  </div>
</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		</div>
		<!-- /.content-wrapper -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->


	<!-- REQUIRED SCRIPTS -->

	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
</body>
</html>
