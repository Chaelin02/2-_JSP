<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("utf-8"); %>	

<%	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String job = request.getParameter("job");
	session.setAttribute("idkey",request.getParameter("id"));
	session.setAttribute("pwd",request.getParameter("pwd"));


	System.out.println("id : " + id);
	System.out.println("pwd : " + pwd);
	System.out.println("name : " + name);
	System.out.println("num1 : "+ num1);
	System.out.println("num2 : "+ num2);
	System.out.println("email : " + email);
	System.out.println("phone : "+ phone);
	System.out.println("zipcode : "+ zipcode);
	System.out.println("address : "+ address);
	System.out.println("job : "+ job);


	Connection conn = null;    //데이터 베이스 접속할려고  //드라이버 매니져가 만들어줌 드라이버매니져는 클렉스포 네임이 만들어줬다. 
	PreparedStatement pstmt = null; 
	ResultSet rs = null;

	String str = "";
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPwd = "mirim2";


		Class.forName("org.gjt.mm.mysql.Driver");				
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
		
		String sql = "insert into tblRegister(id, pwd, name, num1, num2, email, phone, zipcode, address, job) values (?, ?, ?, ?, ?,?,?,?,?)";
		
		pstmt = conn.prepareStatement(sql);   
		pstmt.setString(1, id);
	
				pstmt.setString(2, pwd);
				pstmt.setString(3, name);
				pstmt.setString(4, num1);
				pstmt.setString(5, num2);
				pstmt.setString(6, email);
				pstmt.setString(7, phone);
				pstmt.setString(8, zipcode);
				pstmt.setString(9, address);
				pstmt.setString(10, job);
				pstmt.executeUpdate();
			
	%>
	
	<%
	
		
		str = "회원가입이 완료되었습니다.";
	}catch(Exception e){
		e.printStackTrace();
		str = "회원가입에 실패하였습니다.";
	}finally{
		if(pstmt != null){
			try{
				pstmt.close();
			} catch(SQLException sqle){}
		}
		if(conn != null){
			try{
				pstmt.close();
			} catch(SQLException sqle){}
		}
	}
			
	%>
<h2>회원가입이 완료되었습니다.</h2>
	<form method="post" action=useJDBC.jsp>
		<input type=button value="로긴하기" onClick="javascript:location.href='login_2312.jsp'">
	</form>
	

</center>
</body>
</html>