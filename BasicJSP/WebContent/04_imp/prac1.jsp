<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>웹 브라우져와 웹 서버 정보표시</h2>
	메소드는 <%=request.getMethod() %> <br>
	URL은 <%= request.getRequestURI() %> <br>
	Query는 <%=request.getQueryString() %><br>
	클라이언트 호스트는 <%=request.getRemoteHost() %><br>
	클라이언트 주소는 <%=request.getRemoteAddr() %><br>
	사용중인 프로토콜은 <%=request.getProtocol() %><br>
	서버의 도메인 이름은<%=request.getServerName() %><br>
	서버의 주소은 <%=request.getServerPort() %><br>
	어플리케이션컨텍스트 경로 리턴은 <%=request.getContextPath() %><br>
	
	<h2>헤더의 정보표시</h2>
	 Enumeration<String> en = request.getHeaderNames();
	 
	모든헤더의 이름 <%=request.getHeaderNames() %>
	
	
</body>
</html>