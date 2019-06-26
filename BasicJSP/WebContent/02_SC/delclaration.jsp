<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 선언문 예제 메소드선언</h2>
<% String name = team+"Fighting!!!"; %>   <!-- 지역변수 -->
<%! String team = "Korea"; %>				 <!-- 전역변수 -->
출력결과는? <%=name %>				 <!-- 멤버변수를 늦게해도 출력이 된다는 것을 알려주기 위햐서 짜본거임-->
</body>
</html>