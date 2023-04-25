<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${pageMaker.cri}" />
<c:set var="reply" value="${dataMap.replyList }" />
<style>
</style>
<div class="content-wrapper">

	<section class="content">
		<form role="form" method="post" action="regist.do">
			<input type="hidden" name="member_id" value="${loginUser.member_id }">
			<div class="card">
				<div class="card-body row">
					<div id="navbar" class="col-md-12">
						<div id="navlay" class="col-md-12">
							<div id="writer" class="col-md-2 btn">
								<div id="img" style="font-size: 0.5rem; font-weight: bold;">
									<img
										src="<%=request.getContextPath() %>/common/getimg.do?member_id=${funding.member_id}"
										style="width: 50%; height: 50%; odject-fit: cover; border-radius: 50%;">${funding.member_id }</div>
							</div>
							<a style="font-size: 0.5rem; margin-left: 1000px;"
								href="<%=request.getContextPath()%>/common/fund/list.do"
								class="col-md-1 btn">목록</a>

						</div>
					</div>

					<div class="col-5 text-center d-flex align-items-center justify-content-center">
						<div class="input-group col-md-10">
							<div class="mailbox-attachments clearfix"
								style="text-align: center;">
								<div class="has-img" id="pictureView"
									style="border: 1px solid; height: 300px; width: 300px; margin: 0 auto;"></div>
								<div class="mailbox-attachment-info">
									<div class="input-group input-group-sm">
										<label for="inputFile"
											class=" btn btn-warning btn-sm btn-flat input-group-addon" style="background-color: rgba(100, 183, 0, 0.75); color: white; border:none;">파일선택</label>
										<input id="inputFileName" class="form-control" type="text"
											name="tempPicture" disabled /> <span
											class="input-group-append-sm">
											<input type="hidden" name="picture">
											<button type="button" class="btn btn-info btn-sm btn-append"
												onclick="upload_go();" style="background-color: rgba(100, 183, 0, 0.75); color: white; border:none;">업로드</button>
										</span>
									</div>
								</div>
							</div>
							<br />
						</div>


				

					</div>

					<div class="col-7" style="margin-top: 100px;">
						<div class="col-md-12">
							<div class="col-md-7">장르:</div>
							<span class="col-md-7">게시예정 기간 : 등록일로 부터 2주간 게시될 예정입니다. </span>
						</div>
						<hr />
						<div class="form-group">
							제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목 : <input class="title"
								name="fun_title" placeholder="제목을 입력해주세요." />
						</div>
						<div class="form-group">
							소제목 : <input class="stitle" name="fun_stitle"
								placeholder="소제목을 입력해주세요." />
						</div>
						<div class="form-group">
							내용<br />
							<textarea class="content" name="fun_content"
								style="width: 600px; height: 300px;" placeholder="내용을 입력해주세요."></textarea>
						</div>
						<hr />
						<div class="row">
							<div class="col-md-9 "
								style="display: flex; justify-content: space-between;">
								<div style="display: flex;" class="col-md-9 ">
									<div style="white-space: nowrap; line-height: 37px;">펀딩금액
										:&nbsp;&nbsp;&nbsp;</div>
									<input name="fun_money" type="text" class="form-control"
										placeholder="금액을 입력하세요">
								</div>
								<div>
									<input id="fbutton" type="button" class="btn"
										onclick="regist_go();"
										style="background-color: rgba(100, 183, 0, 0.75); color: white;"
										value="등록" />
								</div>
							</div>
						</div>

					</div>
				</div>
				<hr />
			</div>
		</form>
	</section>
</div>

<form role="imageForm" action="picture.do" method="post"
	enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file"
		class="form-control" style="display: none;" onchange="picture_go();">
	<input id="oldFile" type="hidden" name="oldPicture" value="test" /> <input
		type="hidden" name="checkUpload" value="0" />
</form>


<script>
	var formObj = "";
	window.onload = function() {
		formObj = $("form[role='form']");
	}

	function regist_go() {
		
		formObj.submit();

	}
	
	   function picture_go(){
		      //alert("change file");
		      var form = $('form[role="imageForm"]');
		      var picture = form.find('[name=pictureFile]')[0];
		      
		      var fileFormat = picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
		      //이미지 확장자 jpg확인
		      if(!(fileFormat=="JPG" || fileFormat=="JPEG")){
		         alert("이미지는 jpg 형식만 가능합니다.");
		         return;
		      }
		      //이미지파일 용량 체크
		      if(picture.files[0].size>1024*1024*1){
		         alert("사진 용량은 1MB 이하만 가능합니다.");
		         return;
		      }
		      
		      if(picture.files && picture.files[0]){
		         var reader = new FileReader();
		         
		         reader.readAsDataURL(picture.files[0]);
		         
		         reader.onload = function (e) {
		            var pictureView = $('div#pictureView')[0];
		            //이미지 미리보기
		            pictureView.style.backgroundImage ="url("+e.target.result+")";
		            pictureView.style.backgroundPosition ="center";
		            pictureView.style.backgroundSize ="cover";
		            pictureView.style.backgroundRepeat ="no-repeat";
		         }
		      }
		      
		      form.find('[name="checkUpload"]').val(0);
		      //alert(picture.files[0].name);
		      //$('input[name=tempPicture]').val(picture.files[0].name);
		      $('#inputFileName').val(picture.files[0].name);
		      
		   }
		   
		   function upload_go(){
		      //alert("upload btn");
		      //$('form[role="imageForm"]').submit();
		      if(!$('input[name="pictureFile"]').val()){
		         alert("사진을 선택하세요.");
		         $('input[name="pictureFile"]').click();
		         return;
		      }
		      
		      if($('input[name="checkUpload"]').val()==1){
		         alert("이미 업로드된 사진 입니다.");
		         return;
		      }
		      
		      var formData = new FormData($('form[role="imageForm"]')[0]);
		      
		      $.ajax({
		         url:"picture.do",
		         data:formData,
		         type:"post",
		         processData:false,
		         contentType:false,
		         success:function(data){
		            //업로드 확인변수 세팅
		            $('input[name="checkUpload"]').val(1);
		            //저장된 파일명 저장
		            $('input#oldFile').val(data);//변경시 삭제될 파일명
		            $('form[role="form"] input[name="picture"]').val(data);
		            alert("사진이 업로드 되었습니다.");
		         },
		         error:function(error){
		        	 alert("업로드되지 않았어용");
		         }
		      });
		      
		   }
</script>