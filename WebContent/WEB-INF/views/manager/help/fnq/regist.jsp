<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.content-wrapper{
border:1px solid black;
}
.content-wrapper>.content>#cardwrap>#contentwrap>.card>#button{
   display:flex;
   margin-left:560px;
   margin-bottom:10px;
}
.content-wrapper>.content>#cardwrap>#contentwrap>.card>.card-header>h3{
   margin-left:350px;
}
</style>
<div class="content-wrapper">
   <section class="content container-fluid">
      <div id="cardwrap"class="row justify-content-center">
         <div id="contentwrap"class="col-md-9" style="max-width:960px;">
            <div class="card card-outline card-info">
               <div class="card-header">
                  <h3 class="card-title p-1">자주묻는질문 등록</h3>
               </div><!--end card-header  -->
               <div class="card-body pad">
                  <form role="form" method="post" action="regist.do" name="registForm">
                     <div class="form-group">
                        <label for="title">제 목</label> 
                        <input type="text" id="title"
                           name='title' class="form-control" placeholder="제목을 쓰세요">
                     </div>                     
                     <div class="form-group">
                        <label for="writer">작성자
                        <span style="display:block;width:40xp;height:40px;" class="manPicture" data-id="${loginUser.id }"></span>
                        </label> 
                        <input type="text" id="writer" readonly
                           name="writer" class="form-control" value="${loginUser.id }">
                        
                     </div>
                     <div class="form-group">
                        <label for="content">내 용</label>
                        <textarea class="textarea" name="content" id="content" rows="20"
                           cols="90" placeholder="1000자 내외로 작성하세요." ></textarea>
                     </div>
                  </form>
               </div><!--end card-body  -->
               <div id="button"class=col-md-12>
                  <div class="col-sm-1" >
                     <button type="button" class="btn btn-block"style="background-color: rgba(100, 183, 0, 0.75); color:white">저장</button>
                  </div>
                  <div class="col-sm-1" >
                     <button type="button" class="btn btn-block"style="background-color: rgb(192, 57, 43); color:white">취소</button>
                  </div>
               </div>
               <div class="card-footer" style="display:none">
               
               </div><!--end card-footer  -->
            </div><!-- end card -->            
         </div><!-- end col-md-12 -->
      </div><!-- end row -->
    </section>
</div>
