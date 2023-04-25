<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<!DOCTYPE html>
<html>
<head>
<style>

div.card border-success mb-3{
   display: flex; 
   
}
div.input-group mb-3{
	display:flex;
	

	
}

span{
	margin-left:0px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    
}



div.footer-btn{
	display:flex;
	justify-content: space-around;
	margin-top:60px;
}



</style>

<!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/bootstrap/dist/css/adminlte.min.css">
<body>
<div style="text-align:center;">
  <p style="margin:0; font-size:30px; color:rgba(100, 183, 0, 0.75);">Write Forest</p><p>회원가입</p>
</div>
<div class="card border-success mb-3" style="width:600px;height:600px; margin:0 auto;">
	              <form role="form"method="post" action="join2.do">
	<div class="input-group mb-3" style="height:160px;">
					<span style="font-size:16px;text-aline:center; margin-left:50px;color:rgba(100, 183, 0, 0.75);">
					<span style="color:red;font-weight:bold;">*</span>닉네임</span>
      				<input type="text" name="member_nic" placeholder="닉네임을 입력해주세요" style="border:none;
 									 border-bottom:1px solid gray; width:200px;height:50px; margin-top:50px; margin-left:50px;">		
					
                     <div class="mailbox-attachments clearfix" style="margin-left:80px;width:100px; ">
                       <input type="hidden" name="member_img" value="noImage.jpg" />
                        <div class="profile-user-img img-fluid img-circle" id="pictureView" style="border: 1px solid green; height: 100px; width: 100px;"></div>
                        <div class="fileUploadBox">
                           <div class="input-group input-group-sm" style="">
                           <input id="inputFileName" class="form-control" type="hidden"
											name="tempPicture" disabled /> 
                              <label for="inputFile" class="btn btn-block btn-default btn-sm" style="width:100px; float:left;">사진선택</label>
                              
                           </div>
                        </div>
                     </div>
                     <br />
                    </div> 
                    	<div class="input-group mb-3" style="height:130px;">
	              
					<span style="font-size:16px;text-aline:center; margin-left:50px;color:rgba(100, 183, 0, 0.75);">
					<span style="color:red;font-weight:bold;">*</span>자기소개</span>
      				<input type="text" name="member_pr" placeholder="간단한 자기소개를 입력해주세요(20글자 이내)" style="border:none;
 									 border-bottom:1px solid gray; width:400px;height:50px; margin-top:35px;margin-left:35px;">		
					
                    
                     <br />
                    </div> 
                   <span style="font-size:16px;text-aline:center; margin-left:50px;color:rgba(100, 183, 0, 0.75);">
					<span style="color:red;font-weight:bold;">*</span>관심장르
					<span style="font-size:10px; color:gray; text-aline:center;">&nbsp;(관심있는 장르를 3개 선택해주세요.)</span></span>
				
               				<br/>
				 <div class="checkbox" style="display:flex; justify-content: space-around; align-self: auto; flex-wrap: wrap;">
    				<input type="checkbox" name="member_category" value="시">시
    				<input type="checkbox" name="member_category" value="소설">소설
    				<input type="checkbox" name="member_category" value="SF">SF
   				    <input type="checkbox" name="member_category" value="에세이">에세이
    				<input type="checkbox" name="member_category" value="호러">호러
				</div>
				  
				 <div class="checkbox" style="display:flex; justify-content: space-around; align-self: auto; flex-wrap: wrap;">
    				<input type="checkbox" name="member_category" value="">장르
    				<input type="checkbox" name="member_category" value="">장르
    				<input type="checkbox" name="member_category" value="">장르
   				    <input type="checkbox" name="member_category" value="">장르
    				<input type="checkbox" name="member_category" value="">장르
				</div>
				
				 <div class="checkbox" style="display:flex; justify-content: space-around; align-self: auto; flex-wrap: wrap;">
    				<input type="checkbox" name="member_category" value="">장르
    				<input type="checkbox" name="member_category" value="">장르
    				<input type="checkbox" name="member_category" value="">장르
   				    <input type="checkbox" name="member_category" value="">장르
    				<input type="checkbox" name="member_category" value="">장르
				</div>
  					<input type=hidden name="member_id" value="${member.member_id }">
  					<input type=hidden name="member_pwd" value="${member.member_pwd }">
  					<input type=hidden name="member_email" value="${member.member_email }">
  					<input type=hidden name="member_phone" value="${member.member_phone }">
  					<input type=hidden name="member_name"  value="${member.member_name }">
  					
		 			<div class="footer-btn">
						<button type="button" onclick="history.back();" class="btn btn-block btn-success btn-sm" style="background-color:gray;width:200px; height:40px; margin:0">이전단계</button>
						<button  type="button" onclick="regist_go();" class="btn btn-block btn-success btn-sm" style="width:200px; height:40px; margin:0">가입</button>
  					</div>
						</form>
				 </div>  
    
<form role="imageForm" action="picture.do" method="post" enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" style="display:none;" onchange="picture_go();">
	<input id="oldFile" type="hidden" name="oldPicture" value="test" />
	<input type="hidden" name="checkUpload" value="0" />	
</form>  

<script>
function regist_go(){
	//alert("regist btn");
	
	var uploadCheck = $('input[name="checkUpload"]').val();  	
	if(uploadCheck=='0'){
	    alert("사진업로드는 필수 입니다");      
	    return;
	}
	
	var form = $('form[role="form"]');
	form.attr("action","join2.do");
	form.submit();
}

 function picture_go(){
		//alert("changee file");
		var form = $('form[role="imageForm"]');
		var picture = form.find('[name=pictureFile]')[0];
 	
		var fileFormat = 
			picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
		//이미지 확장자 jpg 확인
		if(!(fileFormat=="JPG" || fileFormat=="JPEG")){
			alert("이미지는 jpg 형식만 가능합니다.");
			return;
		} 
		//이미지 파일 용량 체크
		if(picture.files[0].size>1024*1024*1){
			alert("사진 용량은 1MB 이하만 가능합니다.");
			return;
		};
		
		if (picture.files && picture.files[0]) {
			var reader = new FileReader();
			
			reader.readAsDataURL(picture.files[0]);
			 
			reader.onload = function (e) {
				var pictureView = $('div#pictureView')[0];
				//이미지 미리보기	        	
			 	pictureView.style.backgroundImage = "url("+e.target.result+")";
			 	pictureView.style.backgroundPosition="center";
			 	pictureView.style.backgroundSize="cover";
			 	pictureView.style.backgroundRepeat="no-repeat";
			 	
			 	
			}
		}
		
		if($('input[name="checkUpload"]').val()==1){
			alert("이미 업로드된 사진입니다.");
			return;
		}
	
		 var formData = new FormData($('form[role="imageForm"]')[0]);
		 
		 $.ajax({
				url:"img.do",
				data:formData,
				type:"post",
			    processData:false,
		        contentType:false,
		        success:function(data){
		        	//업로드 확인변수 세팅
		            $('input[name="checkUpload"]').val(1);
		            //저장된 파일명 저장.
		            $('input#oldFile').val(data); // 변경시 삭제될 파일명	          
		            $('form[role="form"]  input[name="member_img"]').val(data);	    	  
		            alert("사진이 업로드 되었습니다.");
		        },
		        error:function(error){
		        	
		        }
		 });

 }
		
		
		function upload_go(){
			//alert("upload btn");

			
			if($('input[name="checkUpload"]').val()==1){
				alert("이미 업로드된 사진입니다.");
				return;
			}
		
			 var formData = new FormData($('form[role="imageForm"]')[0]);
			 
			 $.ajax({
					url:"img.do",
					data:formData,
					type:"post",
				    processData:false,
			        contentType:false,
			        success:function(data){
			        	//업로드 확인변수 세팅
			            $('input[name="checkUpload"]').val(1);
			            //저장된 파일명 저장.
			            $('input#oldFile').val(data); // 변경시 삭제될 파일명	          
			            $('form[role="form"]  input[name="member_img"]').val(data);	    	  
			            alert("사진이 업로드 되었습니다.");
			        },
			        error:function(error){
			        	
			        }
			 });
			 
			
					
		}
		
		
 </script>


</body>

</html>
