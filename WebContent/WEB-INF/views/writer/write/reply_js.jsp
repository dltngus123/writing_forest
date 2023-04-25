<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>    
<script type="text/x-handlebars-template"  id="reply-list-template" >
     {{#each .}}
<div class="replyLi">
  <ul class="comment-box" style="list-style:none;">
    <li>
      <div class="profile-user-img img-fluid img-circle" id="pictureView" style="display:block; border: none; height: 90px; width: 90px; float:left; margin-left:-10px;">
        <img src="<%=request.getContextPath()%>/common/getimg.do?member_id={{member_id}}" class="profile-user-img img-fluid img-circle" style="height: 90px; width: 90px; display:block; border: none;"/>
      </div>
      <div class="info" style="margin-top:10px;float:left">
        <input type="hidden" class="replynum" value="{{reply_num}}">
        <span class="commenter-Name" style="font-size:13px;">{{member_id }}</span>
        <span class="comment-regdate" style="font-size:13px;">{{prettifyDate reply_date}}</span>
      </div>
      <br>
      <div class="comment" style="margin-top:10px; margin-left:105px;">
        <p>{{reply_content}}</p>
      </div>
    </li>
  </ul>
</div>
{{/each}}
				
				
</script>	


<script>
Handlebars.registerHelper({

	   "prettifyDate":function(timeValue){ //Handlbars에 날짜출력함수 등록
	      var dateObj=new Date(timeValue);
	      var year=dateObj.getFullYear();
	      var month=dateObj.getMonth()+1;
	      var date=dateObj.getDate();
	      return year+"."+month+"."+date;
	   }
	  
	});

function printData(replyArr,target,templateObject){
	   var template=Handlebars.compile(templateObject.html());
	   var html = template(replyArr);   
	   $('.replyLi').remove();
	   target.append(html);
	}
function replyList(){
	$.getJSON('<%=request.getContextPath()%>/writer/write/replyList.do?writing_num=${writing.writing_num}',function(data){
		printData(data,$('.commenter-box'),$('#reply-list-template'));
		console.log(data)
	});
	
	}
window.onload=function(){
	
	  replyList();
	  function like_go(){
			 $.ajax({
					url:"<%=request.getContextPath()%>/like/getlike.do",
					data:{writing_num:${writing.writing_num}},
					type:"post",
				     success:function(likecount){
				      $('span.like_count').text(likecount);
				     },
				     error:function(error) {
				         alert("시발");
				     }
				    
				});
				
			}
	  
	    like_go();
		WirteImgThumb('<%=request.getContextPath()%>');
	}
	
	
	
function Replyregist_go(){
	   //alert("reply add btn");
	   var replytext=$('#comment-text').val();   
	   //alert(replytext);

	   var data={
	         "writing_num":"${writing.writing_num}",
	         "member_id":"${loginUser.member_id}",
	         "reply_content":replytext   
	   }
	   $.ajax({
	      url:"<%=request.getContextPath()%>/writer/write/replyregist.do",
	      type:"post",
	      data:JSON.stringify(data),      
	      contentType:'application/json',
	      success:function(){
	         alert('댓글이 등록되었습니다.');
	         $('#newReplyText').val("");   
	         replyList();
	      }
	   });
	}
			
</script>