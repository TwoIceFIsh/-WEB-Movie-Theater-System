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
		<li>영화관: <%="영화관은 " + request.getParameter("Movie_room") + "입니다."%></li>	
		<li>영화이름: <%="영화이름은 "+ request.getParameter("Movie_name") + "입니다."%></li>	
		<li>날짜:<%="날짜는 " + request.getParameter("date") + "입니다."%></li>	
		<li>시간:<%="시간는 "+ request.getParameter("Movie_Time") + "입니다." %></li>	
	</ul>
	
</body>
</html>