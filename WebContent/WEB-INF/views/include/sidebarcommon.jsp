<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <!-- Main Sidebar Container -->
      <aside class="main-sidebar " style="background-color: white;">
         <!-- Sidebar -->
         <div class="sidebar">
         
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-10 mb-10"
               style="display: flex; justify-content: center; margin: 15px;">
               <ul class="image"
                  style="list-style-type: none; flex-drection: row;">
                  <li style="margin: 25px;">
                     <div id="img"
                        style="width: 100px; height: 100px; border: 1px solid black; border-radius: 50%; background-image:url('<%=request.getContextPath()%>/resources/images/컴먼이미지.png'); background-repeat : no-repeat; background-size : cover;"></div>
                  </li>
                  <li style="margin: 10px;"><span class="user-name">글숲에 오셨습니다</span></li>
                  <li style="margin: 4px;"><a class="users-email" href="">welcome@write.forest</a>
                  </li>
                  <li style="margin: 3px;">
                     <button type="button" class="btn btn-block"
                        style="background-color: rgba(100, 183, 0, 0.75); color:white" onclick="OpenWindow('<%=request.getContextPath()%>/common/loginForm.do','Login Page','800','800');">글숲
                        시작하기</button>
                  </li>
               </ul>
            </div>
            <hr/>

            <nav class="mt-2" style="margin: 15px;">
               <div class="accordion" id="accordion">
                  <div id="card" style="text-align: center;">
                     <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                           <button class="btn btn-link collapsed" type="button"
                              data-toggle="collapse" data-target="#collapse2"
                              aria-expanded="false" aria-controls="collapse2"
                              style="color: rgba(100, 183, 0, 0.75);" onclick="writing_go();">-글숲 나우-</button>
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
                              style="color: rgba(100, 183, 0, 0.75);" onclick="fund_go();">-크라우드 펀딩-</button>
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
	function writing_go(){
		location.href='<%=request.getContextPath()%>/common/write/list.do';
	}
	function fund_go(){
		location.href='<%=request.getContextPath()%>/common/fund/list.do';
	}
</script>