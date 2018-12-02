<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>스마트그린하우스에 오신것을 환영합니다.</title>

</head>
<body>

  <div>
    <jsp:include page="testNavbar.jsp" />
    </div>
	<!-- [main] show  -->

	<div id="page-wrapper">
		<div class=" ">
			<h1 class="display-4"> 오유이동 영화관 </h1>
			<p class="lead">어서오십시오!.</p>
		
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>

				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img class="first-slide" src="./image/bg1.jpg" alt="First slide">
						<div class="container">
							<div class="carousel-caption">
								<h1>황해</h1>
								<p>
									맛있는 맛집여행<br>
								 
									
									 
								</p>
							 
							</div>
						</div>
					</div>
					<div class="item">
						<img class="second-slide"    src="./image/bg2.jpg" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								 <h1>너무 좋아요!</h1>
								<p>
									밖에서도 편안히 내식물을 관리해요!<br>
									습도 온도 조절등등 편하네요~
									
									 
								</p>
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

