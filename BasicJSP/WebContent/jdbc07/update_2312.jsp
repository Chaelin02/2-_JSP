<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#ffffcc">
	<form method=post action=updatePro_2312.jsp>
<table border='1' width=600>
	
	<tr>
		<td>id</td>
		<td>won</td> 
	<p>
	<tr>
		<td>이름</td>
		<td>원채린</td>
		
	</tr>
	<tr>
		<td>주민등록번호</td> 
		<td>830815-1234567</td>
		
	</tr>
	<tr>
		<td>Email </td> 
		<td><input type="text" name="email"></td>
		
	</tr>
	<tr>
		<td>전화번호</td> 
		<td><input type="text" name="phone"></td>
		
	</tr>
	<tr>
		<td>우편번호</td> 
		<td><input type="text" name="zipcode"></td>
		
	</tr>
	<tr>
		<td>주소</td> 
		<td><input type="text" name="address"></td>
		
	</tr>
	<tr>
		<td>직업</td> 
		<td><input type="text" name="job"></td>
		
	</tr>
<tr width=300>
	<td colspan=3>
	<center>
		
		<input type = "submit" value="수정하기" onClick="javascript:location.href='updatePro_2312.jsp'">

		<input type = "reset" value="다시쓰기">
	</center>
	</td>
	
</table>

</body>
</html>