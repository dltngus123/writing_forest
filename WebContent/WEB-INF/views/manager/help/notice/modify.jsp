<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
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
                  <h3 class="card-title p-1">공지사항 수정</h3>
               </div><!--end card-header  -->
               <div class="card-body pad">
                  <form role="form" method="post" action="modify.do" >
                    <input type="hidden" name="notice_num" value="${notice.notice_num }" />
                     <div class="form-group">
                        <label for="title">제 목</label> 
                        <input type="text" id="title"
                           name='notice_title' class="form-control" value="${notice.notice_title }">
                     </div>                     
                     <div class="form-group">
                        <label for="writer">작성자
                        <span style="display:block;width:40xp;height:40px;" class="manPicture" data-id="${loginUser.member_id }"></span>
                        </label> 
                        <input type="text" id="writer" readonly
                           name="writer" class="form-control" value="${loginUser.member_id }">
                        
                     </div>
                     <div class="form-group">
                        <label for="content">내 용</label>
                        <textarea class="textarea" name="notice_content" id="content" rows="20"
                           cols="90" placeholder="1000자 이내로 입력하세요" >${notice.notice_content }</textarea>
                     </div>
                  </form>
               </div><!--end card-body  -->
               <div id="button"class=col-md-12>
                  <div class="col-sm-1" >
                     <input type="button" onclick="modify2_go();" value="수정"class="btn btn-block"style="background-color: rgba(100, 183, 0, 0.75); color:white"></input>
                  </div>
                  <div class="col-sm-1" >
                     <button type="button" onclick="location.href='list.do';"class="btn btn-block"style="background-color: rgb(192, 57, 43); color:white">취소</button>
                  </div>
               </div>
               <div class="card-footer" style="display:none">
               
               </div><!--end card-footer  -->
            </div><!-- end card -->            
         </div><!-- end col-md-12 -->
      </div><!-- end row -->
    </section>
</div>

				

<script>
	function modify2_go(){
	    var form = document.querySelector('form[role="form"]');
	    form.submit();
	}
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote.min.js"></script>


