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
	<table border='1'>
		<tr width=400>		 	  
			<td colspan="2" > 
				<jsp:include page="top.jsp" flush="false"/>
			</td>
		</tr>
		<tr height="200">
			<td width=100>
				<jsp:include page="left.jsp" flush="false"/>
			</td>
			<td width=300>
			<center><h4>레이아웃</h4></center>
			</td>
		</tr>
		<tr width=400>
			<td colspan="2" >
			<jsp:include page="bottom.jsp" flush="false"/>   
		</td>
		</tr>
	
	</table>
	
</body>
</html>