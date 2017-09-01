<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<title>유저 리스트</title>
</head>
<script>
	$(document).ready(function(){
		var param = {};
		param["userName"] = $("#userName").val();  
		param = JSON.stringify(param);
		var a = { 
		        type     : "POST"
		    	    ,   url      : "${pageContext.request.contextPath}/user/list"
		    	    ,   dataType : "json" 
		    	    ,   beforeSend: function(xhr) {
		    	        xhr.setRequestHeader("Accept", "application/json");
		    	        xhr.setRequestHeader("Content-Type", "application/json");
		    	    }
		    	    ,   data     : param
		    	    ,   success : function(result){
		    	    	var userList = result.userList;
		    	    	var result = "";
		    	    	for(var i=0, max=userList.length;i<max;i++){
		    	    		var user = userList[i];
		    	    		result += user.userNum + "," + user.userId;
		    	    		result += user.userName + "," + user.age;
		    	    		result += user.address + "," + user.userRoleLevel;
		    	    		result +="<br>";
		    	    	}
		    	    	$("#userDiv").html(result);
		    	    }
		    	    ,   error : function(xhr, status, e) {
		    		    	alert("에러 : "+e);
		    		},
		    		done : function(e) {
		    		}
		    		};
		$.ajax(a);
	}
		$(document). ready(searchUser);
		$(document). ready(function(){
			$("#searchUser").click(function(){
				if($("#userName").val().trim()==""){
					alert("검색할 이름을 입력해주세요.");
					$("#userName").val("");
					$("#userName").focus();
					return;
				}
				searchUser();
		}) 
	}) 
</script>
<div class="container">
	<table id="table" data-height="460" style="padding-top:20px;"
	class="table table-bordered table-hover">
	<thead>
	<tr>
		<th class="text-center">아이디</th>
		<th class="text-center">이름</th>
		<th class="text-center">나이</th>
		<th class="text-center">성별</th>
		<th class="text-center">아이디</th>
		<th class="text-center">아이디</th>
		<th class="text-center">아이디</th>
		<th class="text-center">아이디</th>
		</tr>
		<thead>
		<tbody id="result_tbody">
		</tbody>
	</table>
	<div class="container" style="text-align: center;">
	<label>이름 : </label> <input type="text" id="userName" /> 
		<input type="button" id="searchUser" value="검색" />
	<button id="btnInsert" class="btn btn-primary"  type="button">회원등록</button>
	</div>
</div> 
</body>
</html>