<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>接龙</title>
</head>
<body>
<%!
String message = "";
char last = '一';
ServletContext application;  
synchronized void sendmessage(String s){   
	application= getServletContext();      
	message = message+s+" -->";   
	application.setAttribute("message",message); 
}
synchronized void sendlast(char c){   
	application= getServletContext();      
	last = c;
	application.setAttribute("last",last); 
}
%>
<%
request.setCharacterEncoding("UTF-8"); 
String content = request.getParameter("mess"); 
boolean checkChinese = false;
for(int i=0; i<content.length(); i++){
	if(content.valueOf(content.charAt(i)).getBytes("UTF-8").length > 1) {
		checkChinese = true;
	}
}
if(last == content.charAt(0)) {
if (checkChinese && content.length() == 4){
	sendmessage(content);
	out.println(content.charAt(content.length() - 1));
	sendlast(content.charAt(content.length() - 1));
	out.println("你的成语 "+content+" 已经提交"); 
	response.setHeader("refresh","3;Chengyujielong.jsp");
} else if(!checkChinese){
	out.println("请输入中文成语");
	response.setHeader("refresh","3;Chengyujielong.jsp");
} else {
	out.println("请输入四字成语");
	response.setHeader("refresh","3;Chengyujielong.jsp");
}
} else {
	out.println("请以 " + last + "开头");
	response.setHeader("refresh","3;Chengyujielong.jsp");
}
%>

</body>
</html>