<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="movie.MovieDTO"%>
<%@ page import="movie.MovieDAO"%>
<%@ page import="admin.ScreenListDTO"%>
<%@ page import="admin.ScreenListDAO"%>
<%@page import="java.util.ArrayList"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화등록페이지</title>
</head>
<body>
<body>
	<%
		ScreenListDAO SCREEN = new ScreenListDAO();
		ArrayList<ScreenListDTO> MOVIE_LIST = SCREEN.MOVIE_LIST();
	%>

	<jsp:include page="nav.jsp" />
	<form method="post" class="form-signin" role="form"
		action="ScreenSetServlet">


		<div class="container marketing">
			<div class="row">


				<div class="container">
					<h3>
						<span><label>등록할 영화이름</label></span>
					</h3>
					<select multiple class="form-control col-md-6" name="MOVIE_NAME">
						<%
							for (int i = 0; i < MOVIE_LIST.size(); i++) {
								ScreenListDTO MOVIE_NAME_LIST = MOVIE_LIST.get(i);
						%>
						<option value="<%=MOVIE_NAME_LIST.getMOVIE_NAME()%>"><%=MOVIE_NAME_LIST.getMOVIE_NAME()%></option>
						<%
							}
						%>
					</select>
				</div>

				<div class="container">
					<h3>
						<span><label>상영관</label></span>
					</h3>
					<select multiple class="form-control col-md-6" name="SCREEN_NUMBER">
						<%
							for (int i = 1; i <= 10; i++) {
						%>
						<option value="<%=i%>"><%=i%>관
						</option>

						<%
							}
						%>
					</select>
				</div>
				<div class="container">
					<h3>
						<span><label>시간</label></span>
					</h3>
					<select multiple class="col-md-6 form-control" name="SCREEN_DATE">

						<option value="08:30">08:30</option>
						<option value="09:30">09:30</option>
						<option value="10:30">10:30</option>
						<option value="11:30">11:30</option>
						<option value="12:30">12:30</option>
						<option value="15:30">15:30</option>
						<option value="17:30">17:30</option>
						<option value="19:30">19:30</option>

					</select>
				</div>
				<div class="container">
					<h3>
						<span><label>총 좌석수</label></span>
					</h3>
					<select multiple class="form-control col-md-6" name="TOTAL_SEAT">

						<%
							for (int i = 25; i < 50; i++) {
						%>
						<option value="<%=i%>"><%=i%>석
						</option>
						<%
							}
						%>
					</select>
				</div>

				<div class="col-md-6">
					<span><label></label></span> <br>
					<button type="submit" class="center-block btn btn-danger btn-lg btn-block"><h4>상영스케줄 등록</h4></button>
				</div>
				<%
					if (session.getAttribute("ALERT") != null) {
				%>

				<div class="col-md-6">
					<button type="button" class="btn btn-green btn-lg btn-block"><%=(String) session.getAttribute("ALERT")%></button>
				</div>
				<%
					session.removeAttribute("ALERT");

					}
				%>


			</div>
		</div>
	</form>
	<!-- /END THE FEATURETTES -->


	<!-- FOOTER -->
	<footer>
	<p class="pull-right">
		<a href="#">Back to top</a>
	</p>
	<p>
		&copy; 2018 오유이동 영화관 <a href="#">Privacy</a>
	  <a href="#">Terms</a>
	</p>
	</footer>

	</div>
	<!-- /.container -->


</body>
</html>