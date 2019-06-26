<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		String name = request.getParameter("name");
		 int number = Integer.parseInt(request.getParameter("number"));
		 int a = Integer.parseInt(request.getParameter("a"));
		
		if(a == 1) { 
			out.println("<b>"+name+"</b> 은 디자인과 학번은"+ number +"입니다.");
		} else if(a == 2) { 
			out.println("<b>"+name+"</b> 은 뉴미디어솔루션과 학번은"+ number +"입니다.");
		}else if(a==3){
			out.println("<b>"+name+"</b> 은 SW과 학번은"+ number +"입니다.");
		
	}%>
		
</body>
</html>