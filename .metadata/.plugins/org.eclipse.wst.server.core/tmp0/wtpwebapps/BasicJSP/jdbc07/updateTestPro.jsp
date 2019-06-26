<%@page import="java.sql.SQLException"%>
 <%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<% 
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	
	
	Connection conn = null;   
	PreparedStatement pstmt = null;
	ResultSet rs = null;
		
	String str = "";
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPwd = "mirim2";
		
		
		Class.forName("org.gjt.mm.mysql.Driver");				
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);//	한번썻으면 변하지 않음
		//이것만 맨날 바뀜
		//id,passwd의 값만 필요하고 id의 값만 가져와야하니까 id = "" ?하는거.
		String sql = "select id , pwd from tblregister where id =?";  //?는 여기에 외부의 값을 대입해라라는뜻
		
		pstmt = conn.prepareStatement(sql);   //conn이 만들어줌.
		pstmt.setString(1, id);
		rs = pstmt.executeQuery(); //얘는 받아줌
//여까지 받아주는 거임. 
		
		if(rs.next()){   //한 건이 있을때 if사용하고 여려개면 while문을 쓴다.  내용이 하나라도 있다면.
			String rId = rs.getString("id");
			String rPwd = rs.getString("pwd");
			
			System.out.println("rId : "+rId);
			System.out.println("rPwd : "+rPwd);
			System.out.println(id);
			System.out.println(pwd);
			System.out.println(name);
			
			
			if(id.equals(rId) && pwd.equals(rPwd)) {
				sql = "update tblregister set name = ? where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,name);
				pstmt.setString(2,id);
				pstmt.executeUpdate();
	%>
	레코드를 수정했습니다.
	<% 
			}else 
				out.println("패스워드가 틀렸습니다.");
		}  else 
				out.println("아이디가 틀렸습니다.");
		}catch(Exception e){
			e.printStackTrace();
			str = "데이터 업데이트에 실패했습니다.";
	} finally {
			if(rs != null)
			try {rs.close();} catch(SQLException sqle) {}
		if(pstmt != null)
			try {pstmt.close();} catch(SQLException sqle) {}
		if(conn != null) 
			try {conn.close();} catch(SQLException sqle) {}
			
	}
	
	
	%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>	
tblregister 테이블의 레코드를 수정했습니다. 

</body>
</html>
