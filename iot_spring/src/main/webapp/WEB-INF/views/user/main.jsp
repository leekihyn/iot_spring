<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script> 
$(document).ready(function(){ 
	$("input[type='button']").click(function(){
		var url = this.getAttribute("data-url");
		if(url){
			location.href=url;
		}
	})
})
</script>
<body>
환영합니다. 임마.
<input type= "button" value="유지리스트이동" data-url="/sp/user/list">
</body>
</html>