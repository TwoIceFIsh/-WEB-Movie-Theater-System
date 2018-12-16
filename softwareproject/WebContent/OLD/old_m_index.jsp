<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="movie.MovieDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="movie.MovieDAO"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>오유이동 영화관에오신것을 환영합니다.</title>

<!-- 
구현목표
메인페이지 및 영화예매 페이지

메인화면 호출시

1.자바스크립트 언로드로 영화 이름들을 가져온다

2.MovieDTO = MovieDAO.getMovieInfo로 객체에 모든정보를 담는다 

3.포문으로 캐러셀만든다		
{
for문
캐러셀
getMovie name
get Movie Info
get Movie img
}

 -->
</head>
<body>

	<div>
		<jsp:include page="nav.jsp" />
	</div>
	<!-- [main] show  -->
	<%
		MovieDAO getDB = new MovieDAO();

		ArrayList<MovieDTO> MOVIE_LIST = getDB.getMovieList();
	%>


	<div class=" ">
		<h1 class="display-4">오유이동 영화관</h1>
		<p class="lead">어서오십시오!.</p>

		<form method="post" class="form-signin" role="form"
			action="MovieSetServlet">



			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>

				</ol>
				<div class="carousel-inner" role="listbox">


					<div class="item active">
						<%
							for (int i = 0; i < MOVIE_LIST.size(); i++) {
								MovieDTO MOVIE = MOVIE_LIST.get(i);
						%>

						<div class="row">
							<div class="  col-md-6">
								<div class="thumbnail">
									<img src="./img/pig_of_red.jpg" height="400" width="300">
									<div class="caption ">
										<h3><%=MOVIE.getMOVIE_NAME()%></h3>
										<form method="post" action="MovieGetServlet">
											<button type="submit" name="MOVIE_NAME"
												value="<%=MOVIE.getMOVIE_NAME()%>"
												class="btn btn-default btn-lg">영화정보</button>
										</form>

										<form method="post" action="MovieGetServlet">
											<button type="submit" name="MOVIE_NAME"
												value="<%=MOVIE.getMOVIE_NAME()%>"
												class="btn btn-danger btn-lg">예매하기</button>
										</form>
										<h5><%=MOVIE.getMOVIE_INFO()%></h5>
									</div>
								</div>
							</div>

							<%
								}
							%>

						</div>
					</div>


				</div>
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</form>

	</div>

</body>
</html>
