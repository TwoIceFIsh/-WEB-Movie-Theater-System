<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>

	<jsp:include page="nav.jsp" />
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel " class="carousel slide black" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<!-- <div class="item  ">

				<div class="container">
					<img class="first-slide" src="./img/pig_of_red.jpg" height="400"
						width="300">
					<div class="carousel-caption">
						<h1>붉은 돼지를 먹어라..</h1>
						<p>
							사람으 말을 할수 있는 돼지가있다? <br>무려 이 돼지는 비행기도 조종할수있습니다.

						</p>
						<p>
							 
												<a href="#" class="btn btn-lg btn-default" role="button">영화정보</a>
						</p>
					</div>
				</div>
			</div> -->
			<div class="item active">

				<div class="container">
					<img class="secont-slide" src="./img/station_of_sokcho.jpg"
						height="400" width="300" alt="Third slide">
					<div class="carousel-caption">

						<h1>속초에 가보니 피카츄가 울고있다.</h1>
						<p>
							나와랏 피카츄! 지우의 우렁찬 함성이 온대지를흔든다..<br> 범접할수없는 힘을 가진 지우의 영향으로
							포캣몬들은 자취를 감추는데..<br> 지우의 포켓몬 몰이사냥의 이야기가 지금 여기서 시작된다
						<p>
							<a class="btn btn-lg btn-danger" href="#" role="button"> 
								예매하기</a>					
						</p>
					</div>
				</div>
			</div>
			<!-- <div class="item">

				<div class="container">
					<img class="third-slide" src="./img/your_arm_number.jpg"
						height="400" width="300" alt="Third slide">
					<div class="carousel-caption">
						<h1>니군번은</h1>
						<p>
							헉헉헉... 전역한지 2년째 그당시의 악몽은 가시지 않는다.<br> 어느날 똑같이 군대꿈을 꾸는대 잠에서
							깨질않는다?<br> 넌누구야 내가왜 다른사람이 되어있지? <br>만기대재병장의 어느 이병의 군대대리
							스토리..<br>  						<a href="#" class="btn btn-lg btn-default" role="button">영화정보</a>
						</p>
					</div>
				</div>
			</div> -->
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
				<img class="img-circle"
					src="./img/movieA/a.png"
					alt="Generic placeholder image" width="140" height="140">
				<h2>지우(마동석)</h2>
				<p>속초로 마블리와함께 소풍을 계획한 지우는 속초에서 정체불명의 괴물과 맞닥뜨리게되는데 그순간 친구의 힘을 빌려 위기를 타파한다<p>
					 
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle"
					src="./img/movieA/b.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>피카츄</h2>
				<p>미지의섬에서 지우와 마주치게되어 필사적으로 도망을 치는 역할이다<p>
					 
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle"
					src="./img/movieA/c.jpg"
					alt="Generic placeholder image" width="140" height="140">
				<h2>마블리</h2>
				<p>지우의 여친이자 피카츄의 절대 원수	<p>
					 
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					고뇌하는 지우 <span class="text-muted">그 처량한 눈망울을 보라.</span>
				</h2>
				<p class="lead">마. 내가 제일힘들떄 무엇을 떠올리는지 아나 피카츄? 그것 바로 나의 친구들이다. 너 내 동료가되라.
				</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					 src="./img/movieA/1.jpg" width="300" height="400">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 col-md-push-5">
				<h2 class="featurette-heading">
				절채절명의 위기 . <span class="text-muted">전광석화 그자체..</span>
				</h2>
				<p class="lead">나를 이길상대는 나 자신뿐이다 다들 덤벼 오늘 죽어보자.</p>
			</div>
			<div class="col-md-5 col-md-pull-7">
				<img class="featurette-image img-responsive center-block"
					src="./img/movieA/2.jpg"  width="300" height="400">
			</div>
		</div>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					운수없는날.. <span class="text-muted">힘들군.</span>
				</h2>
				<p class="lead">내가 하지말라했지 나 아트박스사장인데 그만하고 퍼뜩집드가자잉.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive center-block"
					 src="./img/movieA/3.jpg"  width="300" height="400">
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
			&copy; 2018 오유이동 영화관, Inc. &middot; <a href="#">Privacy</a> &middot; <a
				href="#">Terms</a>
		</p>
		</footer>

	</div>
	<!-- /.container -->

</body>
</html>