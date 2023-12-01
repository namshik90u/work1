<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

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
<form action="회원등록insert.jsp" method="get">
<body>
	<h1>회원 등록</h1>
	<table border="1">
		<tr>
			<th width="175px">아이디</th>
			<td width="700px"> <input type="text" name="p_id" style="width:200px"> </td>
		</tr>
		
		<tr>
			<th>비밀번호</th>
			<td> <input type="text" name="p_pw" style="width:200px"> </td>
		</tr>
		
		<tr>
			<th>성명</th>
			<td> <input type="text" name="c_name" style="width:200px"> </td>
		</tr>
		
		<tr>
			<th>이메일</th>
			<td> <input type="text" name="c_email" style="width:400px"> </td>
		</tr>
		
		<tr>
			<th>연락처</th>
			<td> <input type="text" name="c_tel" style="width:200px"> </td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="submit">등 록</button>
				<a href="회원등록SELECT.jsp"><button type="button" >조 회</button></a>
			</td>
		</tr>
	</table>
</body>
</form>
</html>