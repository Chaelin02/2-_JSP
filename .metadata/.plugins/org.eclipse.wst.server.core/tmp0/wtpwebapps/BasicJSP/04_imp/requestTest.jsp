<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% //tomcat이 만들어준다.
	String method = request.getMethod(); 
	 	String protocol = request.getProtocol();
	 	String servername = request.getServerName();
	 	String queryString = request.getQueryString();
		String URI = request.getRequestURI();
		String addr = request.getRemoteAddr();
		int port = request.getServerPort();
		String context = request.getContextPath();		
		String remotehost = request.getRemoteHost();		
	
		//프린트로는 이렇게 => out.println("protocol:" + protocol+"<br>");
	%>
		method = <%=method %> <br>
		protocol = <%=protocol %> <br>
		URI = <%=URI %> <br>
		QueryString = <%=queryString %> <br>
		host = <%=remotehost %> <br>
		address = <%=addr %> <br>
		serverName = <%=servername %> <br>
		port = <%=port %> <br>
		context = <%=context %> <br>	
	

</body>
</html>