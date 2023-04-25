<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><decorator:title default="글숲" /></title>

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

<decorator:head />
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
            <li class="nav-item d-none d-sm-inline-block"><a href="<%=request.getContextPath()%>/common/main.do"
               class="nav-link" style="color: black;">WriTeForest</a></li>
         </ul>
         <!-- center navbar links -->
         <ul class="navbar-nav ml-auto">
            <li class="nav-item d-none d-sm-inline-block">
               <div class="navbar-home" style="font-size: 2rem;">
                  <a href="<%=request.getContextPath()%>/common/main.do" style="display: block; color: rgb(100, 183, 0);">WriTeForest</a>
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
      