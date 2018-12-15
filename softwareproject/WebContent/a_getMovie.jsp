<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="movie.MovieDAO"%>
<%@ page import="movie.MovieDTO"%>
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


	<%
		String MOVIE_NAME = null;
		if (session.getAttribute("MOVIE_NAME") == null) {
			response.sendRedirect("./a_index.jsp");
		}
		if (session.getAttribute("MOVIE_NAME") != null) {
			MOVIE_NAME = (String) session.getAttribute("MOVIE_NAME");

			MovieDTO MOVIE = new MovieDAO().getMOVIE_INFO(MOVIE_NAME);
	%>

	<jsp:include page="nav.jsp" /> 
	<div id="myCarousel " class="carousel slide black" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	 
		</ol>
		<div class="carousel-inner" role="listbox">
		 
			<div class="item active">

				<div class="container">
					<img class="secont-slide" src="<%=MOVIE.getMOVIE_IMG_URL()%>"
						height="400" width="300">
					<div class="carousel-caption">

						<h1><%=MOVIE.getMOVIE_NAME() %></h1>
						<p>
							영화내용<%=MOVIE.getMOVIE_INFO() %>
							<p>
							상영시간<%=MOVIE.getPLAY_TIME() %> 분
			<br>
										<a class="btn btn-lg btn-danger" href="#" role="button"> 예매하기</a>
						</p>
					</div>
				</div>
			</div>

		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->


	<!-- Marketing messaging and featurettes
    ================================================== -->
	<!-- Wrap the rest of the page in another container to center all the content. -->

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="<%=MOVIE.getMOVIE_PEOPLE1_URL() %>"
					width="140" height="140">
				<h2><%=MOVIE.getMOVIE_PEOPLE1() %></h2>
				<p><%=MOVIE.getMOVIE_PEOPLE1_INFO() %>
				
				<p></p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=MOVIE.getMOVIE_PEOPLE2_URL() %>"
					width="140" height="140">
				<h2><%=MOVIE.getMOVIE_PEOPLE2() %></h2>
				<p><%=MOVIE.getMOVIE_PEOPLE2_INFO() %>
				
				<p></p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=MOVIE.getMOVIE_PEOPLE3_URL() %>"
					width="140" height="140">
				<h2><%=MOVIE.getMOVIE_PEOPLE3() %></h2>
				<p><%=MOVIE.getMOVIE_PEOPLE3_INFO() %>
				
				<p></p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 ">
				<h2 class="featurette-heading">
					<%=MOVIE.getMOVIE_SCENE1()%>
				</h2>
				<p class="lead"><%=MOVIE.getMOVIE_SCENE1_INFO() %></p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="<%=MOVIE.getMOVIE_SCENE1_URL() %>" width="300" height="400">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">
					<%=MOVIE.getMOVIE_SCENE2() %>
				</h2>
				<p class="lead"><%=MOVIE.getMOVIE_SCENE2_INFO() %></p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					src="<%=MOVIE.getMOVIE_SCENE2_URL() %>" width="300" height="400">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					<%=MOVIE.getMOVIE_SCENE3() %>
				</h2>
				<p class="lead"><%=MOVIE.getMOVIE_SCENE3_INFO() %></p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					src="<%=MOVIE.getMOVIE_SCENE3_URL() %>" width="300" height="400">
			</div>
		</div>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->
		<footer>
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
			<p>
				&copy; 2018 오유이동 영화관, Inc. &middot; <a href="#">Privacy</a> &middot;
				<a href="#">Terms</a>
			</p>
		</footer>

	</div>
	<!-- /.container -->
	<%
		}
	%>
</body>
</html>