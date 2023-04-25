<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	alert("${loginUser.member_nic}");
	window.close();
	if(window.opener) {
		window.opener.location.href="<%=request.getContextPath()%>${sendURL}";
	}else{
		location.href="<%=request.getContextPath()%>${sendURL}";
	}
</script>