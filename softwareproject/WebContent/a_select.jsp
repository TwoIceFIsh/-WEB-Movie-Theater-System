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

				<h1 class="page-header">좌석선택하기</h1>
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
				SEAT_BITMAP = (String[]) session.getAttribute("SEAT_BITMAP");
				BIT_MAP_LENGTH = (int) session.getAttribute("BIT_MAP_LENGTH");
				if (MOVIE_NAME == null) {
					response.sendRedirect("./a_index.jsp");
				}
		%>

		<div class="row">
			<div class="col-lg-12">

				영화 :
				<%=MOVIE_NAME%>
				<br> 상영관 :
				<%=SCREEN_NUMBER%>
				<br> 상영일자 :
				<%=SCREEN_DATE%>
				<br> ㅡㅡㅡㅡㅡㅡㅡ 스크린 ㅡㅡㅡㅡㅡㅡㅡ<br>


				<div class="row ">
					<%
						for (int i = 0; i < BIT_MAP_LENGTH; i++) {
					%>


					<input class="col-md-1" type="submit" id="btn<%=i%>"
						name="btn<%=i%>" value="<%=i%>" />






					<%
						}

						}
					%>
				</div>

				<form method="post" class="form-signin" role="form" value=""
					action="showmethemoney777.jsp">
					<span><label>좌석번호를 입력하세요</label></span><input type="text"
						class="form-control" name="SEAT_NUMBER" placeholder="번호">

					<div class="col-md-6">
						<span><label></label></span> <br>
						<button type="submit" class="btn btn-danger">좌석선택하기</button>
					</div>
				</form>
			</div>

		</div>

	</div>
</body>
</html>