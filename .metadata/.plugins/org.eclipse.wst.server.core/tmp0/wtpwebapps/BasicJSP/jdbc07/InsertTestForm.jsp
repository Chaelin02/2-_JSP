<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method=post action=InsertTestPro.jsp>
		아이디 : <input type=text name=id ><br>
		패스워드 : <input type=password name=pwd><br>
		이름 : <input type=text name=name><br>
		주민번호 : <input type=text name="num1">-<input type=text name="num2"> <br>
		이메일: <input type=text name=emial><br>
		폰 번호 : <input type=text name=phone><br>
		우편번호 : <input type=text name=zipcode><br>
		주소 : <input type=text name=address><br>
		직업 : <input type=text name=job><br>
		
				 
		<input type=submit value=입력>
	</form>
</body>
</html>