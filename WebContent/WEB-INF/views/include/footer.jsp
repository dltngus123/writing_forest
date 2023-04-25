<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
               <a href="<%=request.getContextPath() %>/writer/help/fnq/list.do" style="font-size: 0.85rem; color: white">고객센터</a>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="align-self-center">
               <a href="<%=request.getContextPath() %>/writer/help/notice/list.do" style="font-size: 0.85rem; color: white">공지사항</a>
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
   
   <script src="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.js"></script>
   <!-- common.js -->
   <script src="<%=request.getContextPath() %>/resources/js/common.js"></script>
</body>
</html>