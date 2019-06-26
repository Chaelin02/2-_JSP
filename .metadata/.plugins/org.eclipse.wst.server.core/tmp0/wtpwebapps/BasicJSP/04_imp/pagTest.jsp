<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  
    info = "BasicJSPPageContext" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String pageInfo = this.getServletInfo(); %>
<%-- this자체가 pageContext를 말하는 거고  --%>
<h1>Page Example</h1>
현재페이지의 info값 :<%= pageInfo %>
</body>
</html>