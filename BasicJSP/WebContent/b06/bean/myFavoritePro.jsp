<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
    
    <!-- 결과창 안나옴 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  
  <jsp:useBean id="bean" class="bo6.bean.FavoritBean">
  	<jsp:setProperty name="bean" property="*" />
  
  	좋아하는 색깔은<jsp:setProperty name="FavoritBean" property="color"/>
 	 좋아하는 꽃은<jsp:setProperty name="FavoritBean" property="flower"/>
  	좋아하는 음악은<jsp:setProperty name="FavoritBean" property="music"/>
 
  </jsp:useBean>
 
	    <jsp:getProperty name="FavoritBean" property="color" />
		<jsp:getProperty name="FavoritBean" property="flower" />
		<jsp:getProperty name="FavoritBean" property="music" />
</body>
</html>