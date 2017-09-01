<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head> 
<body>
 ${hm.test}   
<!-- /<-안붙이면은 현재 주소에서 뒤에 있는 애로 붙음 /이걸 해줘야지 절대 경로. -->
 <form action ="/sp/test/test1/" method="get">   
 <input type = "text" name = "exam">  
 <input type = "submit">
 </form> 
 <form action ="/sp/test/test1/" method="post">
 <input type = "text" name = "exam">
 <input type = "submit">
 </form>
 <form action ="/sp/test/t/" method="post"> 
 <input type = "text" name = "exam">
 <input type = "submit"> 
 </form> 
 
</body>
</html>