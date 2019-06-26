<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 	//배열 초기화 블록을 사용하면 배열 선언 메모리 할당 초기 값 설정을 한번에 할 수 있다.
 String[] str = {"JSP" , "JAVA" , "Android" , "HTML_5" };
	int i= (int)(Math.random()*4); //0~3사이의 값이 임으로 설정%>

<%=str[i] %> 가 재미있다.

</body>
</html>