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
                        style="background-color: rgba(100, 183, 0, 0.75);">글숲
                        시작하기</button>
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
                     <div id="collapse1" class="collapse"
                        aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body"></div>
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
                     <div id="collapse2" class="collapse"
                        aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body"></div>
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
                              data-toggle="collapse" data-target="#collapse3"
                              aria-expanded="false" aria-controls="collapse3"
                              style="color: rgba(100, 183, 0, 0.75);">-회원 관리-</button>
                        </h2>
                     </div>
                     <div id="collapse3" class="collapse"
                        aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body">
                           <a href="#" style="display: block; color: rgb(156, 163, 175);">회원
                              내역</a> <a href="#"
                              style="display: block; color: rgb(156, 163, 175);">회원 신고</a> <a
                              href="#" style="display: block; color: rgb(156, 163, 175);">작가심사</a>
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
                           <button class="btn btn-link collapsed" type="button"
                              data-toggle="collapse" data-target="#collapse4"
                              aria-expanded="false" aria-controls="collapse4"
                              style="color: rgba(100, 183, 0, 0.75);">-공지 사항-</button>
                        </h2>
                     </div>
                     <div id="collapse4" class="collapse"
                        aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body"></div>
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
                     <div id="collapse5" class="collapse"
                        aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body"></div>
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
                              data-toggle="collapse" data-target="#collapse6"
                              aria-expanded="false" aria-controls="collapse6"
                              style="color: rgba(100, 183, 0, 0.75);">-자주 묻는 질문-</button>
                        </h2>
                     </div>
                     <div id="collapse6" class="collapse"
                        aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body"></div>
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
                              data-toggle="collapse" data-target="#collapse7"
                              aria-expanded="false" aria-controls="collapse7"
                              style="color: rgba(100, 183, 0, 0.75);">-문의-</button>
                        </h2>
                     </div>
                     <div id="collapse7" class="collapse"
                        aria-labelledby="headingTwo" data-parent="#accordion">
                        <div class="card-body"></div>
                     </div>
                  </div>
               </div>
            </nav>

            <!-- /.sidebar-menu -->
         </div>
         <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
         <div class="md-12" style="border:1px solid black; display:flex; width:1400px; height:200px; margin:15px;">
            <span class="md-2" style="border:1px solid black; width:300px; height:200px; "></span>
         <span class="md-2" style="border:1px solid black; width:300px; height:200px;"></span>
         <span class="md-2" style="border:1px solid black; width:300px; height:200px;"></span>
         <span class="md-2" style="border:1px solid black; width:300px; height:200px;"></span>
         <span class="md-2" style="border:1px solid black; width:300px; height:200px;"></span>
         <span class="md-2" style="border:1px solid black; width:300px; height:200px;"></span>
         </div>
         <div class="bestwriter">
            <div style=" text-align: center;">writeforest</div>
            <div style=" text-align: center;">작가 추천</div>
            <div class="md-12" style="border:1px solid black;display:flex;  width:1400px; height:200px ;margin:15px;">
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px;"></span>
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px;"></span>
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px;"></span>
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px;"></span>
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px;"></span>
            </div>
         </div>
         <div class="bestfund">
            <div style=" text-align: center;">writeforest</div>
            <div style=" text-align: center;">펀딩 추천</div>
            <div class="md-12" style="border:1px solid black;display:flex;  width:1400px; height:200px; margin:15px;">
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px; "></span>
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px;"></span>
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px;"></span>
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px;"></span>
               <span class="md-2" style="border:1px solid black; width:300px; height:200px; margin:0 5px;"></span>
            </div>
      </div>
      </div>

      <!-- /.content-wrapper -->
      
      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
         <!-- Control sidebar content goes here -->
      </aside>
      <!-- /.control-sidebar -->
      <footer class="main-footer"
         style="background-color: rgba(100, 183, 0, 0.75);">
         <!-- To the right -->
         <!--     <div class="float-right d-none d-sm-inline" >
      Anything you want
    </div>
    Default to the left
    <strong>Copyright &copy; 2023 <a href="https://adminlte.io">write forest</a>.</strong> All rights reserved. -->
         <div class="d-flex justify-content-center">
            <div class="align-self-center">
               <a href="#" style="font-size: 0.85rem; color: white">이용약관</a>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="align-self-center">
               <a href="#" style="font-size: 0.85rem; color: white">고객센터</a>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="align-self-center">
               <a href="#" style="font-size: 0.85rem; color: white">공지사항</a>
            </div>
         </div>
      </footer>
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