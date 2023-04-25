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
	<div class="wrapper" style="width: 1200px; margin: 0 auto;">

		<!-- Navbar -->
		<nav
			class="navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="index3.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
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
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img
									src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/user1-128x128.jpg"
									alt="User Avatar" class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img
									src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/user8-128x128.jpg"
									alt="User Avatar" class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img
									src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/user3-128x128.jpg"
									alt="User Avatar" class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
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
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->

		<!-- Content Wrapper. Contains page content -->
		<div class="">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Starter Page</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Starter Page</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-12">
							<div class="card card-widget widget-user">
								<!-- Add the bg color to the header using any of the bg-* classes -->
								<div class="widget-user-header text-white"
									style="background: url('<%=request.getContextPath()%>/resources/bootstrap/dist/img/photo1.png') center center;">
									<h3 class="widget-user-username text-right">Elizabeth
										Pierce</h3>
									<h5 class="widget-user-desc text-right">Web Designer</h5>
								</div>
								<div class="widget-user-image">
									<img class="img-circle"
										src="<%=request.getContextPath()%>/resources/bootstrap/dist/img/user3-128x128.jpg"
										alt="User Avatar">
								</div>
								<div class="card-footer">
									<div class="row">
										<div class="col-sm-4 border-right">
											<div class="description-block">
												<h5 class="description-header">3,200</h5>
												<span class="description-text">SALES</span>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
										<div class="col-sm-4 border-right">
											<div class="description-block">
												<h5 class="description-header">13,000</h5>
												<span class="description-text">FOLLOWERS</span>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
										<div class="col-sm-4">
											<div class="description-block">
												<h5 class="description-header">35</h5>
												<span class="description-text">PRODUCTS</span>
											</div>
											<!-- /.description-block -->
										</div>
										<!-- /.col -->
									</div>
									<!-- /.row -->
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="row">
								<div class="col-sm-12">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
								<div class="col-sm-6">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-4">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
								<div class="col-sm-4">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
								<div class="col-sm-4">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="row">
								<div class="col-sm-4">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
								<div class="col-sm-8">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-9">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
								<div class="col-sm-3">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="info-box bg-warning">
										<span class="info-box-icon"><i
											class="far fa-calendar-alt"></i></span>

										<div class="info-box-content">
											<span class="info-box-text">Events</span> <span
												class="info-box-number">41,410</span>

											<div class="progress">
												<div class="progress-bar" style="width: 70%"></div>
											</div>
											<span class="progress-description"> 70% Increase in 30
												Days </span>
										</div>
										<!-- /.info-box-content -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
			<div class="p-3">
				<h5>Title</h5>
				<p>Sidebar content</p>
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<!-- Main Footer -->
		<footer class="">
			<!-- To the right -->
			<div class="float-right d-none d-sm-inline">Anything you want</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
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
