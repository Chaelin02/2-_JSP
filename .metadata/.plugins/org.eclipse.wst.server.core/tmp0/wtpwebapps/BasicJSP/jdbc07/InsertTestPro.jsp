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
	String id = request.getParameter("id");// 입력할 데이터 가져오기
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String zipcode = request.getParameter("zipcode");
	String address = request.getParameter("address");
	String job = request.getParameter("job");
	
	
	System.out.println("id : " + id);
	System.out.println("pwd : " + pwd);//제대로 가져왔는지 확인상 한번 찍어주는 것.
	System.out.println("name : " + name);
	System.out.println("num1 : "+ num1);
	System.out.println("num2 : "+ num2);
	System.out.println("email : " + email);
	System.out.println("phone : "+ phone);
	System.out.println("zipcode : "+ zipcode);
	System.out.println("address : "+ address);
	System.out.println("job : "+ job);
	
	Connection conn = null;    //데이터 베이스 접속할려고  //드라이버 매니져가 만들어줌 드라이버매니져는 클렉스포 네임이 만들어줬다. 
	PreparedStatement pstmt = null;   //쿼리문 닫는게 statment인데  이제부턴 prepared쓸거임. 요즘은 프리페얼드를 더 사용함 더빠르니까 
										//근데 사용할때는 prepare 로 쓴다. ed 없음 선언할때만쓴다
	
	String str="";
	try {
		String jdbcUrl = "jdbc:mysql://localhost:3306/mydb";
		String dbId = "root";
		String dbPwd = "mirim2"; //각 주소, 아이디, 비밀번호를 객체로 설정해놓는 것이 좋은 소스이다.
	//불변함. 
		
		Class.forName("org.gjt.mm.mysql.Driver");			
		//위에꺼 try밖에있어도 ㄱㅊ지만 안전하게. 
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);//	한번썻으면 변하지 않음
		//DriverManager는Class.forName("org.gjt.mm.mysql.Driver");	얘가 만들어주는거임
		//이거를 통해서 이제 접속시작함. 
		String sql = "insert into tblRegister(id, pwd, name, num1, num2, email, phone, zipcode, address, job) values (?, ?, ?, ?, ?,?,?,?,?)";
		// ?를 쓴이뉴는 값 대입할때 그냥 쓰는거임
		pstmt = conn.prepareStatement(sql);
		//db쿼리에 접속해서 시작할래? 하는 문장임.   윗 문장을 
		pstmt.setString(1, id);
		//아이디 매핑(대입)
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
		//DB에 Data     .... 얘가 실행시키는 거임. 
		
		
		str = "tblRegister 테이블에 새로운 레코드를 추가했습니다.";
	}catch(Exception e){
		e.printStackTrace();
		str = "tblRegister 테이블에 새로운 레코드 추가에 실패했습니다.";
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
<!--  셀렉트랑 업데이트가 뭐라했노  -->
	<%= str %>
	<!--  -->
	<% if(str.equals("tblRegister 테이블에 새로운 레코드를 추가했습니다.")){ %>
	<form method="post" action=useJDBC.jsp>
		<input type=submit value="데이터 조회">
	</form>
	<%} %>
</body>
</html>