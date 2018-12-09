<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>

<body>

	<jsp:include page="js.jsp" />

	<div class="window-margin">


		<div class="window">

			<aside class="sidebar">
				<div class="top-bar">
					<p class="logo">OU2D 영화관</p>
				</div>

				<div class="search-box">
					<input type="text" placeholder="영화검색하기" />
					<p class="fa fa-search"></p>
				</div>

				<menu class="menu">
					<p class="menu-name">Movie trailers</p>
					<ul>
						<li class="active"><a href="#">Action / Adventure</a>
							<ul>
								<li><a href="#">Latest</a></li>
								<li class="active"><a href="#">Popular</a></li>
								<li><a href="#">Coming soon</a></li>
								<li><a href="#">Staff picks</a></li>
							</ul></li>
						<li><a href="#">Animation</a></li>
						<li><a href="#">Comedy</a></li>
						<li><a href="#">Documentaries</a></li>
						<li><a href="#">Drama</a></li>
						<li><a href="#">Horror</a></li>
						<li><a href="#">Sci-Fi / Fantasy</a></li>
						<li><a href="#">List A-Z</a></li>
					</ul>

					<div class="separator"></div>

					<ul class="no-bullets">
						<li><a href="#">Latest news</a></li>
						<li><a href="#">Critic reviews</a></li>
						<li><a href="#">Box office</a></li>
						<li><a href="#">Top 250</a></li>
					</ul>

					<div class="separator"></div>
				</menu>
			</aside>


			<div class="main" role="main">

				<div class="top-bar">

					<ul class="top-menu">
						<li class="menu-icon trigger-sidebar-toggle">
							<div class="line"></div>
							<div class="line"></div>
							<div class="line"></div>
						</li>
						<li><a href="#">Headlines</a></li>
						<li><a href="#">Articles</a></li>
						<li class="active"><a href="#">홈페이지</a></li>
						<li><a href="#">Television</a></li>
						<li><a href="#">Music</a></li>
						<li><a href="#">Celebrities</a></li>
					</ul>


					<ul class="nav navbar-top-links navbar-right">




						<li><a href="./m_login.jsp"><i class="fa fa-user fa-fw"></i>
								로그인</a></li>

						<li><a href="./m_join.jsp"><i class="fa fa-gear fa-fw"></i>
								회원가입</a></li>

					</ul>
				</div>
				<!-- top bar -->


				<div class="featured-movie">
					<img class="cover"
						src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394277453/backdrop_ggwxvq.jpg"
						alt="" class="cover" />
					<p class="corner-title">Staff pick</p>

					<div class="bottom-bar">
						<div class="title-container">
							<span class="fa fa-play-circle"></span> <b>Non-stop</b> Trailer
							#1
						</div>

						<div class="right">
							<div class="stars">
								<span class="fa fa-star"></span> <span class="fa fa-star"></span>
								<span class="fa fa-star"></span> <span class="fa fa-star-half-o"></span>
								<span class="fa fa-star-o"></span>
							</div>
							<div class="share">
								<icon class="fa fa-share-square"></icon>
								Share
							</div>
						</div>
						<!-- right -->
					</div>
					<!-- bottom bar -->
				</div>
				<!-- featured -->

				<div class="row movie-list">
					<div class="title-bar">
						<div class="left">
							<p class="bold">Popular Trailers</p>
							<p class="grey">Action / Adventure</p>
						</div>
						<!-- left -->
						<div class="right">
							<a class="blue" href="#">Rating <i class="fa fa-angle-down"></i></a>
							<a href="#">Newest</a> <a href="#">Oldest</a>
						</div>
						<!-- right -->
					</div>
					<div class="col-md-4 col-md-offset-4">
						<div class="login-panel panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">회원가입 하기</h3>
							</div>
							<div class="panel-body">

								<fieldset>
									<div>
										<h5>아이디</h5>
										<input class="form-control" type="text" id="MEMBER_ID"
											maxLength="20" placeholder="아이디를 입력하세요.">
										<button class="btn btn-primary"
											onclick="registerCheckFunction();" type="button">중복체크</button>
									</div>
									<div>
										<h5>이름</h5>
										<input class="form-control" type="text" id="MEMBER_NAME"
											maxLength="20" placeholder="이름을 입력하세요.">
									</div>

									<div>
										<h5>비밀번호</h5>
										<input onkeyup="passwordCheckFunction();" class="form-control"
											type="password" id="MEMBER_PW_1" maxLength="20"
											placeholder="비밀번호를 입력하세요.">
									</div>
									<div>
										<h5>비밀번호 확인</h5>
										<input onkeyup="passwordCheckFunction();" class="form-control"
											type="password" id="MEMBER_PW_2" maxLength="20"
											placeholder="비밀번호를 입력하세요.">
									</div>


									<div>
										<h5>이메일</h5>
										<input class="form-control" type="text" id="MEMBER_ADDRESS"
											maxLength="20" placeholder="주소를 입력하세요.">
									</div>
									<h5 style="" id="statusMessage"></h5>

									<input class="btn btn-primary pull-right" type="submit"
										value="회원가입" onClick="joinFunction()">

								</fieldset>

							</div>
						</div>
					</div>
				</div>


			</div>
			<!-- main -->

		</div>
		<!-- window -->
	</div>
	<!-- window margin -->
	<script
		src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
	<script>
		jQuery(document).ready(function($) {

			$('a').on('click', function(e) {
				e.preventDefault();
			});

			$('.trigger-sidebar-toggle').on('click', function() {
				$('body').toggleClass('sidebar-is-open');
			});

		});
		//# sourceURL=pen.js
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="js/bootstrap.min.js"></script>
</body>

</html>