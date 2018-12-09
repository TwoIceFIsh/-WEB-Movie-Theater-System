<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>오유이동 영화관에오신것을 환영합니다.</title>

</head>
<body>

	<div>
		<jsp:include page="nav.jsp" />
	</div>
	<!-- [main] show  -->

	<div id="page-wrapper">
		<div class=" ">
			<h1 class="display-4">오유이동 영화관</h1>
			<p class="lead">어서오십시오!.</p>




			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>

				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
					
					
						<div class="row">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="./img/pig_of_red.jpg" alt="...">
									<div class="caption">
										<h3>붉은 돼지를 먹어라..</h3>

										<a href="#" class="btn btn-default" role="button">영화정보</a> <a
											href="#" class="btn btn-danger" role="button">예매하기</a>

									</div>
								</div>
							</div>
						
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="./img/station_of_sokcho.jpg" alt="...">
									<div class="caption">
										<h3>속초에 가보니 피카츄가 울고있다</h3>

											<a href="#" class="btn btn-default" role="button">영화정보</a> <a
											href="#" class="btn btn-danger" role="button">예매하기</a>
<h5>나와랏 피카츄! 지우의 우렁찬 함성이 온대지를흔든다.. 범접할수없는 힘을 가진 지우의 영향으로 포캣몬들은 자취를 감추는데.. 지우의 포켓몬 몰이사냥의 이야기가 지금 여기서 시작된다</h5>
									</div>
								</div>
							</div>
					
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="./img/your_arm_number.jpg" alt="...">
									<div class="caption">
										<h3>니군번은</h3>

											<a href="#" class="btn btn-default" role="button">영화정보</a> <a
											href="#" class="btn btn-danger" role="button">예매하기</a>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="row">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="./img/pig_of_red.jpg" alt="...">
									<div class="caption">
										<h3>Thumb nail label</h3>

										<a href="#" class="btn btn-primary" role="button">Button</a> <a
											href="#" class="btn btn-default" role="button">Button</a>

									</div>
								</div>
							</div>
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
			<!-- /.carousel -->
		</div>
	</div>

</body>
</html>

