<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="movie.MovieDAO"%>
<%@ page import="movie.MovieDTO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화선택페ㅣㅇ지</title>
</head>
<body>
<body>

	<%-- <%
	
			ArrayList<MovieDTO> MOVIE = new MovieDAO().getMOVIE_LIST();
	%>

	<%=MOVIE.get(1).getMOVIE_NAME()%> --%>
	<jsp:include page="nav.jsp" />
	<form method="post" action="MovieGetServlet">
		ID : <input type="text" name="MOVIE_NAME" value=""> <input
			type="submit" value="전송">
	</form>

	<%
		
	%>

</body>
</html>