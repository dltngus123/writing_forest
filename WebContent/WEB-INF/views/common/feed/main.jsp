<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.content-wrapper>#feedwrap{
   height:1300px;
}
.content-wrapper>#feedwrap>#feedhead{
   height:200px;
   background-color:rgba(100, 183, 0, 0.75);
   position:relative;
}
.content-wrapper>#feedwrap>#userimg{
   border:1px solid black;
   height:150px;
   width:150px;
   display:inline-block;
   border-radius: 50%;
   position:absolute;
   top:150px;
   left:300px;
}
.content-wrapper>#feedwrap>#feedbody>#follow{
   display:flex;
}
.content-wrapper>#feedwrap>#feedbody>#body-title{
   display:flex;
   margin-left:500px;
}
</style>
<div class="content-wrapper">
   <div id="feedwrap" class="col-md-12">
   <div id="feedhead"class="col-md-12">
   </div>
      <div id="userimg" class="col-sm-3">${member_img }</div>
   <div id="feedbody" class="col-md-12">
      <div id="follow"class="col-md-12" style="margin-bottom:10px;text-align:center;">
      <div id="name"class="col-md-7" style="font-size:1.5rem;margin:30px;">${member_nic }닉네임자리
      <div id="pr" class="col-md-6" style="font-size:1rem;text-align:right;">소개</div>
      </div>
      </div>
      <div class="col-md-12" style="display:flex;justify-content:left;margin-bottom:30px;">
         <div class="col-sm-1" style="margin-left:430px;"><a href="#">구독자</a>
         <div>숫자</div></div>
         <div class="col-sm-1"><a href="#">관심작가</a>
         <div>숫자</div></div>
         <div style="margin-left:600px;">
            <input id="fbutton"type="submit" class="btn " value="구독" style="background-color: rgba(100, 183, 0, 0.75);color:white;"/>      
         </div>
      </div>
         <hr/>
         <div id="body-title"class="col-md-10">
            <div class="col-md-4"><a href="javascript:goPage(writer_feedwritelist);">글</a></div>
            <div class="col-md-4"><a href="javascript:goPage(writer_feedfundiglist);">펀딩</a></div>
         </div>
         <hr/>
         <iframe name="ifr" src="" frameborder="0" style="width:100%;height:85vh;"></iframe>
         
   </div>
   </div>
</div>
<script>
   function goPage(url){
   //alert(url);
   $('iframe[name="ifr"]').attr("src",url);
   }

</script>