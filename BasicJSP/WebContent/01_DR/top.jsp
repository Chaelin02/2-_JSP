<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.Timestamp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top.jsp</title>
</head>
<body>
	<% 
	Timestamp now = new Timestamp(System.currentTimeMillis());
	%>
	top.jsp입니다.<p>
	<%=now.toString() %>
	
	<!-- 현재는<%= now.getHours() %>시 <%= now.getMinutes() %> 분 입니다. -->
	<% out.println("현재는"+now.getHours()+"시"+now.getMinutes()+"분 입니다.");  %>
	<hr>
</body>
</html>