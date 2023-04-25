<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<body>

          		<div id="downwrap">
      		<hr/>
      		<div class="col-md-12"  >
      			<div class="row">
				<div class="col-12">
				
				<div class="card-body table-responsive p-0">
				<table class="table table-hover text-nowrap">
				<thead>
				<tr>
				<th>제목/소제목</th>
				<th>글이미지</th>
				<th>작성자</th>
				</tr>
				</thead>
				<tbody>
				<tr>
				<%-- <c:forEach> --%>
				<td>${writing_title }${writing_stitle }제목소제목자리</td>
				<td>${writing_img}글이미지</td>
				<td>${member_id }회원아이디</td>
				<%-- </c:forEach> --%>
				</tr>
				</tbody>
				</table>
				</div>
				
				</div>
				
				</div>
				</div>
      	</div>
      	
      	 <nav aria-label="Page navigation example" style="display:flex; justify-content:center; ">
		  <ul class="pagination">
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
</body>
 <script
      src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
   <!-- Bootstrap 4 -->
   <script
      src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
   <!-- AdminLTE App -->
   <script
      src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
