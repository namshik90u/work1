<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<% 
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			PreparedStatement stmt = con.prepareStatement("INSERT INTO custom_11 VALUES(?,?,?,?,?)");
			stmt.setString(1, request.getParameter("p_id"));
			stmt.setString(2, request.getParameter("p_pw"));
			stmt.setString(3, request.getParameter("c_name"));
			stmt.setString(4, request.getParameter("c_email"));
			stmt.setString(5, request.getParameter("c_tel"));
		stmt.execute();
		stmt.close();
		con.close();
	%>
	<a href="회원등록.jsp">돌아가기</a>
</body>
</html>