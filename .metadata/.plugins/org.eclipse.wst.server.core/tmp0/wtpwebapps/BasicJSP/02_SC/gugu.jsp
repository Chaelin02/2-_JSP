<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! int i; int j;%>
		
	 <%	for(i=2;i<=9;i++){%>
	 	<%=i %>단<br>
		 <%	for(j=1;j<=9;j++){%>
				<%=i%> X <%=j %> = <%=i*j%><br>
		<!-- System.out.print랑 <%= %> 랑 같은거. -->
		<%	} %>
	<% } %>}

</body>
</html>