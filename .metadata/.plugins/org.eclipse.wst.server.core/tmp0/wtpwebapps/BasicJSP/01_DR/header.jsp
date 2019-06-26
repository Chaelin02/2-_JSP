<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	<%! 
	int pageCount =0;
		void addCount(){
		pageCount++ ; 
		
		}
	%>
	<%addCount(); %>  <!-- 이때 실행이 되는거임.1로 페이지카운트 변함 -->
	
	<body>
		<br><br>
			<center>
				<p>이 페이지 방문 횟수는 <%= pageCount %>번 입니다.
			</center>
	</body>
	
</body>
</html>