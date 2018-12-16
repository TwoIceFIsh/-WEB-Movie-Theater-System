<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="movie.MovieDTO"%>
<%@ page import="movie.MovieDAO"%>
<%@ page import="screen.ScreenDTO"%>
<%@ page import="screen.ScreenDAO"%>
<!DOCTYPE html  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 무조건 이양식을 따라야 한글이 제대로 출력이됩니다.
 -->
<title>기본 구성 페이지!</title>
</head>
<body>


	<!-- 네비게이션 바를 로딩합니다 -->
	<jsp:include page="nav.jsp" />



	<div id="page-wrapper">
		<div class="row">

			<div class="col-lg-12">

				<h1 class="page-header">제목.</h1>
			</div>

		</div>

		<%
			String MOVIE_NAME = null;
			String SCREEN_DATE = null;
			String SCREEN_NUMBER = null;
			String SEAT_BITMAP[] = null;
			int BIT_MAP_LENGTH = 0;

			if (session.getAttribute("MOVIE_NAME") != null) {
				MOVIE_NAME = (String) session.getAttribute("MOVIE_NAME");
				SCREEN_DATE = (String) session.getAttribute("SCREEN_DATE");
				SCREEN_NUMBER = (String) session.getAttribute("SCREEN_NUMBER");
				SEAT_BITMAP = (String[])session.getAttribute("SEAT_BITMAP");
				BIT_MAP_LENGTH = (int)session.getAttribute("BIT_MAP_LENGTH");
				if (MOVIE_NAME == null) {
					response.sendRedirect("./a_index.jsp");
				}
		%>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">


					<div class=" col-md-12">영화이름 상영관 영화시간 좌석 테이블 그림그리기</div>
				</div>
				<%=MOVIE_NAME %>
				<%=SCREEN_NUMBER%>
				<%=SCREEN_DATE %>
				<%=SEAT_BITMAP[0] %>
				<%=BIT_MAP_LENGTH %>
			</div>

		</div>
		<%
			}
		%>
	</div>
</body>
</html>