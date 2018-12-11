<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화등록페이지</title>
</head>
<body>
<body>
	

	<jsp:include page="nav.jsp" />
	<form method="post" class="form-signin" role="form"
		action="MovieSetServlet">

		<!-- Carousel
    ================================================== -->
		<div name="myCarousel " class="carousel slnamee black"
			data-rnamee="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slnamee-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slnamee-to="1"></li>
				<li data-target="#myCarousel" data-slnamee-to="2"></li>
			</ol>




			<div class="carousel-inner" role="listbox">

				<div class="item active">

					<div class="container">
						<img class="secont-slnamee" src="./img/sample.png" height="400"
							wnameth="300" alt="Third slnamee">
						<div class="carousel-caption">
							<div>
				 


								<input type="submit" value="전송"> <span><label>영화포스터
										주소를 입력하세요</label></span><input type="text" class="form-control"
									name="MOVIE_IMG_URL" placeholder="img/sample.jpg 형식으로입력!">
							</div>
							<div>
								<span><label>영화제목</label></span><input type="text"
									class="form-control" name="MOVIE_NAME"
									placeholder="영화제목 입력하세요 10자">
							</div>
							<p>
							<div>
								<span><label>영화설명</label></span><input type="text"
									class="form-control" name="MOVIE_INFO"
									placeholder="영화설명을 입력하세요 300자">
							</div>
							<div>
								<span><label>영화플레이시간</label></span><input type="text"
									class="form-control" name="PLAY_TIME"
									placeholder="영화플레이시간을 입력하세요 3자">
							</div>
							<div>
								<span><label>영화가격</label></span><input type="text"
									class="form-control" name="MOVIE_COST"
									placeholder="영화가격을 입력하세요 3자">
							</div>
							<p>
								<button type="submit" class="btn btn-danger">영화등록하기</button>
							</p>
						</div>
					</div>
				</div>

			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slnamee="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hnameden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slnamee="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hnameden="true"></span>
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
					<div>
						<span><label>등장인물1 사진 주소를 입력하세요</label></span><input type="text"
							class="form-control" name="MOVIE_PEOPLE1_URL"
							placeholder="등장인물 사진 주소를 입력하세요">
					</div>

					<div>
						<span><label>등장인물1 이름</label></span><input type="text"
							class="form-control" name="MOVIE_PEOPLE1"
							placeholder="등장인물 이름을 입력하세요 30자">
					</div>


					<div>
						<span><label>등장일물1 설명</label></span><input type="text"
							class="form-control" name="MOVIE_PEOPLE1_INFO"
							placeholder="등장인물 설명을 입력하세요 500자">
					</div>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<div>
						<span><label>등장인물2 사진 주소를 입력하세요</label></span><input type="text"
							class="form-control" name="MOVIE_PEOPLE2_URL"
							placeholder="등장인물 사진 주소를 입력하세요">
					</div>

					<div>
						<span><label>등장인물2 이름</label></span><input type="text"
							class="form-control" name="MOVIE_PEOPLE2"
							placeholder="등장인물 이름을 입력하세요 30자">
					</div>


					<div>
						<span><label>등장일물2 설명</label></span><input type="text"
							class="form-control" name="MOVIE_PEOPLE2_INFO"
							placeholder="등장인물 설명을 입력하세요 500자">
					</div>

				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<div>
						<span><label>등장인물3 사진 주소를 입력하세요</label></span><input type="text"
							class="form-control" name="MOVIE_PEOPLE3_URL"
							placeholder="등장인물 사진 주소를 입력하세요">
					</div>

					<div>
						<span><label>등장인물3 이름</label></span><input type="text"
							class="form-control" name="MOVIE_PEOPLE3"
							placeholder="등장인물 이름을 입력하세요 30자">
					</div>


					<div>
						<span><label>등장일물3 설명</label></span><input type="text"
							class="form-control" name="MOVIE_PEOPLE3_INFO"
							placeholder="등장인물 설명을 입력하세요 500자">
					</div>

				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->


			<!-- START THE FEATURETTES -->

			<hr class="featurette-divnameer">

			<div class="row featurette">
				<div class="col-md-7 ">
					<div>
						<span><label>장면1 제목</label></span><input type="text"
							class="form-control" name="MOVIE_SCENE1"
							placeholder="장면1 제목을 입력하세요 500자">
					</div>
					<div>
						<span><label>장면1 설명</label></span><input type="text"
							class="form-control" name="MOVIE_SCENE1_INFO"
							placeholder="장면1 설명을 입력하세요 500자">
					</div>
				</div>
				<div class="col-md-5">
					<div>
						<span><label>장면1 사진주소 </label></span><input type="text"
							class="form-control" name="MOVIE_SCENE1_URL"
							placeholder="장면1 사진주소입력하세요 500자">
					</div>
				</div>
			</div>
			<hr class="featurette-divnameer">
			<div class="row featurette">
				<div class="col-md-7 ">
					<div>
						<span><label>장면1 제목</label></span><input type="text"
							class="form-control" name="MOVIE_SCENE2"
							placeholder="장면1 제목을 입력하세요 500자">
					</div>
					<div>
						<span><label>장면1 설명</label></span><input type="text"
							class="form-control" name="MOVIE_SCENE2_INFO"
							placeholder="장면1 설명을 입력하세요 500자">
					</div>
				</div>
				<div class="col-md-5">
					<div>
						<span><label>장면1 사진주소 </label></span><input type="text"
							class="form-control" name="MOVIE_SCENE2_URL"
							placeholder="장면1 사진주소입력하세요 500자">
					</div>
				</div>
			</div>
			<hr class="featurette-divnameer">

			<div class="row featurette">
				<div class="col-md-7 ">
					<div>
						<span><label>장면1 제목</label></span><input type="text"
							class="form-control" name="MOVIE_SCENE3"
							placeholder="장면1 제목을 입력하세요 500자">
					</div>
					<div>
						<span><label>장면1 설명</label></span><input type="text"
							class="form-control" name="MOVIE_SCENE3_INFO"
							placeholder="장면1 설명을 입력하세요 500자">
					</div>
				</div>
				<div class="col-md-5">
					<div>
						<span><label>장면1 사진주소 </label></span><input type="text"
							class="form-control" name="MOVIE_SCENE3_URL"
							placeholder="장면1 사진주소입력하세요 500자">
					</div>
				</div>
			</div>
			<hr class="featurette-divnameer">
	</form>
	<!-- /END THE FEATURETTES -->


	<!-- FOOTER -->
	<footer>
	<p class="pull-right">
		<a href="#">Back to top</a>
	</p>
	<p>
		&copy; 2018 오유이동 영화관, Inc. &mnamedot; <a href="#">Privacy</a>
		&mnamedot; <a href="#">Terms</a>
	</p>
	</footer>

	</div>
	<!-- /.container -->


</body>
</html>