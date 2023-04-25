<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
alert("펀딩이 게시 되었습니다.");
window.close();
if(window.opener) {
	window.opener.location.reload();
}else{
	location.href="<%=request.getContextPath()%>/writer/fund/list.do";
}
</script>