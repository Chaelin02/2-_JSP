<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 스크립트 예제활용</h2>
	<%! Timestamp now = new Timestamp(System.currentTimeMillis()); %>
	현재는 <%= now.getHours() %> 시 <%=now.getMinutes() %> 분입니다.
</body>
</html>