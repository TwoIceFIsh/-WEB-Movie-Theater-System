<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>결과학인</title>
</head>
<body>
	<h1>영화 예매 결과</h1>
	<ul>
		<li>영화: <%="영화는 <" + request.getParameter("movie") + "> 입니다."%></li>	
		<li>영화관: <%="영화관은 " + request.getParameter("room") + "관 입니다."%></li>	
		<li>영화이름: <%="영화이름은 "+ request.getParameter("time") + "분 입니다."%></li>	
		<li>남은 관람좌석:<%="남은 관람좌석은 " + request.getParameter("seat") + "좌석 입니다."%></li>		
	</ul>
	
</body>
</html>