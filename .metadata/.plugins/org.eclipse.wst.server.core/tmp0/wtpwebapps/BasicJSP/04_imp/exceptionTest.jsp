<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage = "exception.jsp"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	int one = 1; 
	int zero = 0;
	%>
	
	<h1>Exception Example 1</h1>
	one/zero = <%= one/zero %> <p>
</body>
</html>