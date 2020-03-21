<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成语接龙</title>
</head>
<body>
请用四字成语进行接龙<br>
你输入的成语为：
<%
  String s = (String)application.getAttribute("message");  
  if(s!=null){  
	  out.println(s);   
  }else{   
	  out.println("请首先以一开头：<br>");   
  }
 %>
 <form action="jielong.jsp" method="post"> <br>
    输入成语：<input type="text" name="mess"/><br>
    <input type="submit" value="提交"/>
 </form>
</body>
</html>