<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import = "java.util.Enumeration" %>
        <% request.setCharacterEncoding("utf-8"); %>
          <%@ page import = "java.util.*" %>
         <!--  < page import = "java.sql.Timestamp" %> -->
<!DOCTYPE html>
	<% 
	String name = request.getParameter("name");
	String memo = request.getParameter("memo");
	Enumeration<String> en = request.getHeaderNames();//시험
	String headerName="";
	String headerValue = "";	
	%>
	<% Date date = new Date(); %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>메모장</h2> <p>
	<table border="1">
		<tr> 
			<td width="10">성명</td>
			 <td><%= name %></td>
		</tr>
	<tr> <td >메모</td>
		 <td ><%= memo %></td>
	</tr>
	<tr>
		<td> 날짜 </td>
		<td>	<%= date.toLocaleString() %></td>
	<tr>
		<td><% 
			while(en.hasMoreElements()){
				headerName = en.nextElement(); //request.getheaderNames로 헤더를 가져옴 
				headerValue = request.getHeader(headerName);
				out.print("<tr><td>"+ headerName+"</td><td>"
						+headerValue+"</td></tr>");
			}	

		%>
		</table>
	</body>
</html>


