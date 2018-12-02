<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>결과학인</title>
</head>
<body>
	<h1>영화 예매 결과</h1>
	<ul>
		<li>영화관: <%=request.getParameter("Movie_room") %></li>	
		<li>영화이름: <%=request.getParameter("Movie_name") %></li>	
		<li>날짜:<%=request.getParameter("date") %></li>	
		<li>시간:<%=request.getParameter("Movie_Time") %></li>	
	</ul>
	
</body>
</html>