<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Starter</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
   <div class="wrapper" style="margin: 0 auto; ">

      <!-- Navbar -->
      <nav
         class="navbar navbar-expand navbar-green navbar-light" style="background-color:rgba(165,205,130,0.85); height:150px;">
         <!-- Left navbar links -->
         <ul class="navbar-nav"  >
            <li class="nav-item"><a class="nav-link" data-widget="pushmenu"
               href="#" role="button" style="font-size:15px;" ><i class="fas fa-bars"></i></a></li>
            <li class="nav-item d-none d-sm-inline-block"  ><a
               href="index3.html" class="nav-link" style="font-style:oblique; font-weight:bolder; color:black; font-size:17px;">Writer Forest</a></li>
         </ul>

         <!-- Right navbar links -->
         <ul class="navbar-nav ml-auto" >
            <!-- Navbar Search -->
            <li class="nav-item"  ><a class="nav-link"
               data-widget="navbar-search" href="#" role="button"   > <i
                  class="fas fa-search"></i>
            </a>
               <div class="navbar-search-block">
                  <form class="form-inline">
                     <div class="input-group input-group-sm">
                        <input class="form-control form-control-navbar" type="search"
                           placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                           <button class="btn btn-navbar" type="submit">
                              <i class="fas fa-search"></i>
                           </button>
                           <button class="btn btn-navbar" type="button"
                              data-widget="navbar-search">
                              <i class="fas fa-times"></i>
                           </button>
                        </div>
                     </div>
                  </form>
               </div></li>

            <!-- Messages Dropdown Menu -->
            
            <!-- Notifications Dropdown Menu -->
            <li class="nav-item dropdown">
               <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                  <span class="dropdown-header">15 Notifications</span>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item"> <i
                     class="fas fa-envelope mr-2"></i> 4 new messages <span
                     class="float-right text-muted text-sm">3 mins</span>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item"> <i
                     class="fas fa-users mr-2"></i> 8 friend requests <span
                     class="float-right text-muted text-sm">12 hours</span>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
                     3 new reports <span class="float-right text-muted text-sm">2
                        days</span>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item dropdown-footer">See All
                     Notifications</a>
               </div></li>
          
            
         </ul>
      </nav>
      <!-- /.navbar -->

      <!-- Main Sidebar Container -->
      

      <!-- Content Wrapper. Contains page content -->
   
         <!-- Content Header (Page header) -->
         <div class="content-header" >
            <div class="container-fluid" style="display:flex;" >
               <div class="row mb-2" style="font-size:3rem; font-family: Georgia, serif; margin:0 165px; " >
                  야가다맨
                  <!-- /.col -->
               </div>
               <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
         </div>
         <!-- /.content-header -->
		<div style="position:relative; left:240px; font-size: 16px; font-weight:500">야매작가</div>&nbsp;
		<div></div>&nbsp;
		<div style="position:relative; left:200px; font-size: 16px; font-weight:500;"> 구독자 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;관심작가</div>
		<div style="position:absolute; left:200px; font-size: 16px; font-weight:500;"> &nbsp; &nbsp; &nbsp; 1 &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; 2 </div>
		<div></div>&nbsp;
		<div></div>&nbsp;
		
         <!-- Main content -->
         <div class="content">
            <div class="container-fluid">
               
               <div class="row">
                 
                     
                   
                     </div>
                  </div>

                  <div class="col-sm-12">
                  <div class="row">
                     <div class="col-sm-4"></div>
                     <div class="col-sm-8"></div>
                  </div>
                  <div class="row">
                     <div class="col-sm-3"></div>
                     <div class="col-sm-9"></div>
                  </div>
                  <div class="row">
                     <div class="col-sm-6"></div>
                  </div>
                  </div>
               </div>
               <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
    
         <!-- /.content -->
    

      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark" >
         <!-- Control sidebar content goes here -->
         <div class="p-3">
            <h5>Title</h5>
            <p>Sidebar content</p>
         </div>
      </aside>
      <!-- /.control-sidebar -->

      <!-- Main Footer -->
      <footer class="main-footer">
         <!-- To the right -->
         
      </footer>
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