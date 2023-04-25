<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<style>
.content-wrapper>#downwrap>#content>#marticle>#list>li{
  list-style-type:none;
}
.content-wrapper>#downwrap>#content>#marticle>#list>li>#flex{
   display:flex;
   justify-content:space-around;
}
</style>



     

<!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
         <div style="display:flex; justify-content:end; margin:5px;">
        <div id="keyword" class="card-tools" style="width:550px; ">
                   <div class="input-group row">
                      <!-- search bar -->
                      <!-- sort num -->
                    <select class="form-control col-md-3" name="perPageNum" id="perPageNum" onchange="">                               
                       <option value="10" selected="">정렬개수</option>
                       <option value="2">2개씩</option>
                       <option value="3">3개씩</option>
                       <option value="5">5개씩</option>
                    </select>
                    
                    
                    <!-- search bar -->
                   <select class="form-control col-md-3" name="searchType" id="searchType">
                      <option value="">검색구분</option>
                      <option value="i">아이디</option>
                      <option value="n">이름</option>
                      <option value="p">전화번호</option>
                      <option value="e">이메일</option>                               
                  </select>
                  <!-- keyword -->
                      <input class="form-control" type="text" name="keyword" placeholder="검색어를 입력하세요." value="">
                  <span class="input-group-append">
                     <button class="btn btn-primary" type="button" id="searchBtn" data-card-widget="search" onclick="list_go(1);">
                        <i class="fa fa-fw fa-search"></i>
                     </button>

                  </span>
               <!-- end : search bar -->      
                   </div>
               </div>
         </div>      
            <div id="downwrap">
            <hr/>
            <div class="col-md-12" style="border:1px solid black;" >
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
            <td>${writing_title }${writing_stitle }</td>
            <td>${writing_img}</td>
            <td>${member_id }</td>
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
      </div>
      

      <!-- /.content-wrapper -->
