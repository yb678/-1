<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>登录</title>
</head>
<% 
String usernam=null;
String userpaw=null;
Cookie[] cookies=request.getCookies();
if(cookies!=null&&cookies.length>0){
	  for(int i=0;i<cookies.length;i++){
	     if(cookies[i].getName().equals("usernam"))
	     usernam=cookies[i].getValue();
	     else if(cookies[i].getName().equals("userpaw"))
	     userpaw=cookies[i].getValue();
	     if(usernam!=null&&userpaw!=null)
	    	 break;
	     response.sendRedirect("hello.jsp");
	     }
     }
	%>
<body>
 <form action="come" action="post">
 <table>
 <tr>
 <td>
 用户名
 </td>
 <td>
 <input name="nam" value="" style="width: 150px;height: 20px;">
 </td>
 <td></td>
 </tr>
 <tr>
 <td>
密码*
 </td>
 <td>
<input name="paw" value="" type="password" style="width: 150px;height: 20px;">
 </td>
 <td></td>
 </tr>
 <tr>
 <td></td>
 <td align="right">
<input type="checkbox" name="chose" value="yes">
 </td>
 <td align="center">
 两周免登录
 </td>
 </tr>
 <tr>
 <td></td>
 <td align="center"><input type="submit" value="登录"></td>
 </tr>
</table>
</form>
</body>
</html>