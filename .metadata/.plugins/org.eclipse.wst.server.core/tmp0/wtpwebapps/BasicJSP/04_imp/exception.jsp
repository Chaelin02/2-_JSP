<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage = "true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String message = exception.getMessage();
	String objectMessage = exception.toString();
	%>
	에러메세지 : <b><%=message %></b><p>
	에러실테의 클래스 명과 에러메세지:<b><%=objectMessage %></b><p>
 </body>
</html>