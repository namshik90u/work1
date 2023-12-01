<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<% 
Date now = new Date(); 
String CODE = request.getParameter("code");
String JEJO="";

	if("A001".equals(CODE)){
		JEJO="삼성전자";
	}
	else if("A002".equals(CODE)){
		JEJO="LG전자";
	}
	else if("A003".equals(CODE)){
		JEJO="하이닉스";
	}
	else{
		JEJO="등록되지 않은 제품입니다!!";
		%><script>alert("등록되지 않은 제품입니다");</script><%
	}
%>
<style>
	h1{
		text-align:center;
	}
	table{
		margin:Auto;
	}
	th{
		text-algin:center;
	}
</style>
	<body>
	<h1>제품코드 조회 결과</h1>
	<hr>
		<table border="1">
			<tr>
				<th colspan="2">제조사 조회 결과</th>
			</tr>
			
			<tr>
				<td>제품코드</td>
				<td><%=CODE %></td>
			</tr>
			
			<tr>
				<td>제조사명</td>
				<td><%=JEJO %></td>
			</tr>
			
			<tr>
				<td>조회일시</td>
				<td><%=now %></td>
			</tr>
		</table>
		<hr>
			<div>
				<center>작성자:한국인 비번:1004 작성일:2019-10-31</center>
			</div>
	</body>
</html>