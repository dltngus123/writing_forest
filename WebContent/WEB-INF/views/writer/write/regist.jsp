<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<link href="<%=request.getContextPath() %>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css" rel="stylesheet">
<style>

.title-box{
	width:100vw;
	height:250px;
	border:none;
	border-bottom:1px solid gray;
}
.title{
 width:800px;
 height:40px;
 margin-top:100px;
 margin-left:310px;
 font-size:40px;
 border:none;
 outline:none;
 background-color: transparent;
}
.stitle{
 border:none;
 margin-left:310px;
 font-size:20px;
 color:gray;
 outline:none;
 background-color: transparent;
}
.content-box{
	border-bottom:1px solid gray;
	width:800px;
	min-height:600px;
	margin:0 auto;
}


}
#pictureView{
	margin-top:5px;
		
}




</style>
</head>
<body>
<form role="form" method="post" action="regist.do">
	<div class="title-box" id="pictureView" style="float:left;">
	<input type="hidden" name="writing_state" value="1">
	<input type="hidden" name="writing_category" value="zz">
	<input type="hidden" name="member_id" value="${loginUser.member_id }">
	<input  type="hidden" name="writing_himg" value="noimag">
	<div class="input-group input-group-sm" style="">
        <input id="inputFileName" class="form-control" type="hidden"name="tempPicture" disabled /> 
           
                </div>
	 <input class="title" name="writing_title" placeholder="제목을 입력해주세요.">
	 <br><br>
	 <input class="stitle" name="writing_stitle" placeholder="소제목을 입력해주세요.">	 
	</div>
		<div class="btn" style="float:right; margin-right:100px;">
		<label for="inputFile" class="btn btn-block btn-default btn-sm" style="width:100px; float:left;">사진선택</label>
		<br><br>
		<button type="submit" class="btn btn-block btn-default btn-sm" style="width:100px; float:left;">업로드</button>
		<button type="button" onclick="regist_go();"class="btn btn-block btn-default btn-sm" style="width:100px;float:left; margin-top:0px;">임시저장</button>
		</div>
	<div class=contain>
		<div class="content-box">	
		<textarea class="content" name="writing_content"></textarea>
		</div>
		</div>
</form>

<form role="imageForm" action="picture.do" method="post" enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" style="display:none;" onchange="picture_go();">
	<input id="oldFile" type="hidden" name="oldPicture" value="test" />
	<input type="hidden" name="checkUpload" value="0" />	
</form>  
		
		<script>
		window.onload=function(){
    		summernote_go($('.content'),'<%=request.getContextPath()%>');
    	}
	    function regist_go(){
	    	$('input[name="writing_state"]').val("0");
	    	$('form[role="form"]').submit();
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
			            $('form[role="form"]  input[name="writing_himg"]').val(data);	    	  
			            alert("사진이 업로드 되었습니다.");
			        },
			        error:function(error){
			        	
			        }
			 });

	 }

		</script>	

</body>

</html>