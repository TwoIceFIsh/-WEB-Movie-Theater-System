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
					<p class="logo">REPLEX</p>
				</div>

				<div class="search-box">
					<input type="text" placeholder="Search..." />
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
						<li class="active"><a href="#">Movies & Films</a></li>
						<li><a href="#">Television</a></li>
						<li><a href="#">Music</a></li>
						<li><a href="#">Celebrities</a></li>
					</ul>

					<div class="profile-box">
						<div class="circle"></div>
						<span class="arrow fa fa-angle-down"></span>
					</div>

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


				<div class="movie-list">
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
					<!-- title-bar -->

					<ul class="list">
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283878/2014-03-08_140412_oavbye.png"
							alt="" class="cover" />
							<p class="title">Sin City: A Dame To Kill For</p>
							<p class="genre">Action, Crime</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140329_aawn02.png"
							alt="" class="cover" />
							<p class="title">Transcendence</p>
							<p class="genre">Action, Drama</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140239_kyg9i7.png"
							alt="" class="cover" />
							<p class="title">Need For Speed</p>
							<p class="genre">Action, Crime</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140052_dq4dyx.png"
							alt="" class="cover" />
							<p class="title">The Amazing Spiderman</p>
							<p class="genre">Action, Adventure</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140104_tdgzka.png"
							alt="" class="cover" />
							<p class="title">Pompeii</p>
							<p class="genre">Action, Adventure</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140248_fmufrz.png"
							alt="" class="cover" />
							<p class="title">Divergent</p>
							<p class="genre">Action, Sci-Fi</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140401_aewzsy.png"
							alt="" class="cover" />
							<p class="title">Guardians of the Galaxy</p>
							<p class="genre">Action, Adventure</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140339_wck2gw.png"
							alt="" class="cover" />
							<p class="title">X-Men: Days of Fury</p>
							<p class="genre">Action, Adventure</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140311_rj1det.png"
							alt="" class="cover" />
							<p class="title">Captain America: The Winter Soilder</p>
							<p class="genre">Action, Adventure</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140248_fmufrz.png"
							alt="" class="cover" />
							<p class="title">Divergent</p>
							<p class="genre">Action, Sci-Fi</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140132_bcnfqk.png"
							alt="" class="cover" />
							<p class="title">RoboCop (2014)</p>
							<p class="genre">Action, Crime</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140329_aawn02.png"
							alt="" class="cover" />
							<p class="title">Transcendence</p>
							<p class="genre">Action, Drama</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140239_kyg9i7.png"
							alt="" class="cover" />
							<p class="title">Need For Speed</p>
							<p class="genre">Action, Crime</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140157_wvifsp.png"
							alt="" class="cover" />
							<p class="title">The Lego Movie</p>
							<p class="genre">Adventure, Animation</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283878/2014-03-08_140412_oavbye.png"
							alt="" class="cover" />
							<p class="title">Sin City: A Dame To Kill For</p>
							<p class="genre">Action, Crime</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140339_wck2gw.png"
							alt="" class="cover" />
							<p class="title">X-Men: Days of Fury</p>
							<p class="genre">Action, Adventure</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140052_dq4dyx.png"
							alt="" class="cover" />
							<p class="title">The Amazing Spiderman</p>
							<p class="genre">Action, Adventure</p></li>
						<li><img
							src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140248_fmufrz.png"
							alt="" class="cover" />
							<p class="title">Divergent</p>
							<p class="genre">Action, Sci-Fi</p></li>
					</ul>

					<a href="#" class="load-more">Show more movies <span
						class="fa fa-plus"></span></a>

				</div>
				<!-- movie list -->


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
</body>

</html>