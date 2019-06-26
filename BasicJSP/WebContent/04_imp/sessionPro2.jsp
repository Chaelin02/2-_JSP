<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Session Example</h1>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String season = request.getParameter("season");   //이건 전페이지여서 리퀘스트
	String fruit = request.getParameter("fruit");
	String id = (String)session.getAttribute("idkey");  //이건 전전페이지여서 세션에 담았다가.
	String sessionId = session.getId();
	int intervalTime = session.getMaxInactiveInterval();
	//String number = (String)session.getAttribute("number");
	if(id != null){  //session에 넣었던 아이디 값
	%>
	<b><%= id %></b> 님이 좋아하시는 계절과 과일은<p>
	<b><%= session%></b>과 <b><%= fruit%></b>입니다.<p>
	세션 ID: <%= sessionId %><p>
	세션 유지 시간 : <%= intervalTime %> 초<p>
	<%-- 실행했을때 에러뜸 --%>
<% 
	session.invalidate();
	}else {
		out.println("세션의 시간이 경과를 하였거나 다른 이유로 연결을 할 수가 없습니다.");
	}
	
	%>
</body>
</html>