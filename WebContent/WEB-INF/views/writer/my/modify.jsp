<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.content-wrapper>#imgbox>#img{
   border:1px solid black;
   width:150px;
   height:150px;
   border-radius:50%;
   margin:30px 900px;
}
.content-wrapper>#content>#writername>#name{
   text-align:end;   
   margin-bottom:10px;
}
.content-wrapper>#content>#writerpr{
   text-align:end;   
   margin-top:10px;
   margin-bottom:10px;
   margin-left:40px;
}
.content-wrapper>#content{
   margin-left:300px;
}
.content-wrapper>#button>.input-group-append>input{
   margin:0 auto;
}

</style>
<div class="content-wrapper">

   <div id="imgbox"class="col-md-12">
      <div id="img"class="col-md-2">${member.img }
      <i class="fa-regular fa-camera fa-2xl" style="color: #727274;"></i>
      </div>
   </div>
   <div id="content" class="col-md-12">
   <div id="writername"class="col-md-12 ">
      <div class="col-md-7" style="margin-left:200px;">
      <h3 id="name"class="col-md-2">작가명</h3>
      <textarea id="authorName" class="tf_comm" name="userName" placeholder="이름을 입력해주세요." maxlength="30" style="height:34px;">${member.name }</textarea>
      </div>

   </div>
   
   <div id="writerpr"class="col-md-12">
        <div class="head_iedit head_iedit2 col-md-3">
              <h3 class="tit_edit" style="text-align:center;">
                     <label for="profileInfo" class="lab_comm">소개</label><span class="ico_brunch_v1 ico_star"></span>
              </h3>
        </div>
        <div class="box_tf col-md-3" style="margin-left:50px;text-align:center;">
        <textarea id="profileInfo" name="description" class="tf_comm" placeholder="간단한 소개를 입력해주세요." maxlength="100" style="width:200px;height:350px;"></textarea>
         </div>                    
         </div>
   </div>
   
   <div id="button" class="col-md-8" style="display:flex;justify-content:end;">
      <div class="input-group-append">      
         <input id="fbutton"type="submit" class="btn " value="취소" style="background-color:rgb(192, 57, 43);color:white;margin:5px;"/>      
      </div>
      <div class="input-group-append">      
         <input id="fbutton"type="submit" class="btn " value="저장" style="background-color: rgba(100, 183, 0, 0.75);color:white;margin:5px;"/>      
      </div>
   </div>

</div>
