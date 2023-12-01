<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>

	<style>
		h1{
			text-align:center;
		}
		table{
			margin:Auto;
			text-align:center;
		}
	</style>

<body>
<h1>회원목록조회</h1>
<table border="1">
<tr>
	<th width="150">회원아이디</th>
	<th width="150">회원이름</th>
	<th width="200">이메일</th>
	<th width="150">연락처</th>
</tr>
	<% /* 자바 DB 연동 프로그램 */
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from custom_11");
			while(rs.next()){
				out.println("<tr>");
				out.println("<td>" + rs.getString(1) + "</td>");
				out.println("<td>" + rs.getString(3) + "</td>");
				out.println("<td>" + rs.getString(4) + "</td>");
				out.println("<td>" + rs.getString(5) + "</td>");
				out.println("</tr>");
			}
			rs.close();
			stmt.close();
			con.close();
		
		stmt.close();
		con.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	</table>
</body>
<footer>
<br>
	<center><a>HRDKOREA Copyrightⓒ2013 ALL rights reserved. Human Resources Development Service of Korea</a></center>
</footer>
</html>