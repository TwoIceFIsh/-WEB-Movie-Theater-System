<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="movie.MovieDTO"%>
<%@ page import="movie.MovieDAO"%>
<%@ page import="admin.ScreenListDTO"%>
<%@ page import="admin.ScreenListDAO"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 예매 공간</title>
<style type="text/css">
#img.absolute {
	height: 100px;
	width: 100px;
	position: absolute;
	left: 325px;
	top: 50px;
}
</style>
</head>
<body>
<body>

	<%
		ScreenListDAO SCREEN = new ScreenListDAO();
		ArrayList<ScreenListDTO> MOVIE_LIST = SCREEN.MOVIE_LIST();
	%>
	<jsp:include page="nav.jsp" />
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel " class="carousel slide black" data-ride="carousel">

		<div class="carousel-inner" role="listbox">

			<h1 align="center">영화 예매</h1>

		</div>

	</div>

	<div class="container marketing">

		<div class="row">

			<h1 class="page-header">보고싶은 영화를 선택하세요!</h1>
		</div>

		<%
			for (int i = 0; i < MOVIE_LIST.size(); i++) {
				ScreenListDTO MOVIE_NAME_LIST = MOVIE_LIST.get(i);
		%>
		<div class="row container">
			<div class="col-md-12">

				<a class="btn btn-success btn-lg"><%=MOVIE_NAME_LIST.getMOVIE_NAME()%></a>
			</div>
			<br>


			<%
				ArrayList<ScreenListDTO> SCREEN_LIST = SCREEN.getSCREEN_LIST(MOVIE_NAME_LIST.getMOVIE_NAME());

					if (SCREEN_LIST.size() <= 0) {
			%>
			<div class="col-md-12">
				<button type="button" class="btn btn-danger btn-lg">일정 없음</button>
			</div>
			<%
				}
			%>
			
			<div class="col-md-12">
			<%
				for (int j = 0; j < SCREEN_LIST.size(); j++) {
						ScreenListDTO SCREEN_LIST_DTO = SCREEN_LIST.get(j);
			%>
			
				<form method="post" action="ScreenSearchServlet">
					<button type="submit" name="data"
						value="<%=SCREEN_LIST_DTO.getMOVIE_NAME()%>,<%=SCREEN_LIST_DTO.getSCREEN_DATE()%>,<%=SCREEN_LIST_DTO.getSCREEN_NUMBER()%>"
						class="btn btn-default btn-lg">
						<%=SCREEN_LIST_DTO.getSCREEN_NUMBER()%>관<br> 일시:
						<%=SCREEN_LIST_DTO.getSCREEN_DATE()%>
						<br>남은좌석 :<%=SCREEN_LIST_DTO.getTOTAL_SEAT() - SCREEN_LIST_DTO.getRESERVED_SEAT()%>
				</form>
		

			<%
				}
			%>
	</div>

			<!-- 영화이름을 넘긴다. -->
			<p>
		</div>
		<br>
		<%
			}
		%>
	</div>
	<!-- FOOTER -->
	<footer>
	<p class="pull-right">
		<a href="#">Back to top</a>
	</p>
	<p>
		<br> &copy; 2018 오유이동 영화관, Inc. &middot; <a href="#">Privacy</a>
		&middot; <a href="#">Terms</a>
	</p>
	</footer>


	<!-- /.container -->

</body>
</html>