<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String id = "Mirim";
		String hobby = "만화보기" ;
	%>
	포워딩 하는 페이지 forwardToTest2.jsp입니다.<br>
	<jsp:forward page="forwardToTest5.jsp">
	<jsp:param name="id" value="<%=id %>" />
	<jsp:param name="hobby" value="<%=hobby %>" />
	</jsp:forward>
	
</body>
</html>