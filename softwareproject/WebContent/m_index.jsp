
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/AyhanALTINOK/pen/Atlva" />
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'><script src='https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js'></script>
<style class="cp-pen-styles">@import url(https://fonts.googleapis.com/css?family=Open+Sans:600,300,100|Open+Sans+Condensed:300);
@import url(https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);
body {
  background: #FFF linear-gradient(to bottom, #3F567C, #B5CCC6) no-repeat;
  font-family: Open Sans, sans-serif;
}
a {
  text-decoration: none;
  transition-duration: .3s;
}
a:hover {
  transition-duration: .05s;
}
.window-margin {
  max-width: 1200px;
  padding: 60px;
  margin: auto;
}
.window {
  margin: auto;
  border-radius: 5px;
  background: #FFF;
  overflow: hidden;
  position: relative;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}
.window .sidebar .top-bar,
.window .main .top-bar {
  height: 65px;
  color: #FFF;
}
.window .sidebar {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  width: 250px;
  background: #24282C;
  transition-duration: .3s;
  color: #DDD;
}
.window .sidebar .top-bar {
  background: #3AB0FF;
  overflow: hidden;
}
.window .sidebar .top-bar .logo {
  float: left;
  font-family: Open Sans Condensed, sans-serif;
  font-size: 40px;
  line-height: 65px;
  margin-left: 20px;
}
.window .sidebar .search-box {
  background: #373D41;
  padding: 20px;
  position: relative;
}
.window .sidebar .search-box input {
  width: 170px;
  border: 0;
  padding: 10px 20px;
  border-radius: 50px;
  outline: none;
  color: #999;
  transition-duration: .3s;
}
.window .sidebar .search-box input:focus {
  color: #333;
}
.window .sidebar .search-box input:focus ~ .fa {
  color: #999;
}
.window .sidebar .search-box .fa {
  position: absolute;
  top: 31px;
  right: 35px;
  color: #CCC;
  transition-duration: .3s;
  cursor: pointer;
}
.window .sidebar .menu {
  padding-top: 20px;
}
.window .sidebar .menu .separator {
  border-top: 1px solid #111111;
  border-bottom: 1px solid #353535;
  margin: 20px;
}
.window .sidebar .menu a {
  color: #DDD;
  text-decoration: none;
}
.window .sidebar .menu a:hover {
  color: #FFF;
}
.window .sidebar .menu .menu-name {
  text-transform: uppercase;
  padding: 0 20px;
  font-size: 14px;
  margin-bottom: 10px;
}
.window .sidebar .menu > ul.no-bullets > li a:before {
  content: none !important;
}
.window .sidebar .menu > ul > li {
  list-style: none;
}
.window .sidebar .menu > ul > li > a {
  position: relative;
  top: -3px;
  font-size: 14px;
  padding: 8px 25px;
  display: block;
  font-weight: bold;
}
.window .sidebar .menu > ul > li > a:before {
  content: '';
  height: 9px;
  width: 9px;
  border-radius: 50px;
  display: inline-block;
  margin-right: 10px;
  box-shadow: inset 0 0 0 1px #EEE;
}
.window .sidebar .menu > ul > li.active {
  list-style-type: disc;
  color: #FF3A3A;
  padding-bottom: 10px;
}
.window .sidebar .menu > ul > li.active > a {
  padding-bottom: 0;
}
.window .sidebar .menu > ul > li.active > a:before {
  background: #FF3A3A;
  box-shadow: none;
}
.window .sidebar .menu > ul > li.active ul {
  display: block;
  margin-left: 50px;
  margin-top: 5px;
}
.window .sidebar .menu > ul > li.active ul li.active a {
  color: #FFF;
  font-weight: bold;
}
.window .sidebar .menu > ul > li.active ul li a {
  padding: 5px;
  display: block;
  font-size: 13px;
  color: #888;
}
.window .sidebar .menu > ul > li.active ul li a:hover {
  color: #FFF;
}
.window .sidebar .menu > ul > li ul {
  display: none;
}
.window .main {
  margin-left: 250px;
  transition-duration: .3s;
  position: relative;
}
.window .main .top-bar {
  background: #279CEB;
}
.window .main .top-bar .top-menu {
  float: left;
}
.window .main .top-bar .top-menu .menu-icon {
  float: left;
  padding: 27px 20px 20px 18px;
  display: none;
  cursor: pointer;
  transition-duration: .3s;
}
.window .main .top-bar .top-menu .menu-icon:hover {
  background: #54baff;
  transition-duration: .05s;
}
.window .main .top-bar .top-menu .menu-icon .line {
  height: 2px;
  width: 20px;
  background: #FFF;
  margin-bottom: 4px;
}
.window .main .top-bar .top-menu li {
  float: left;
  font-size: 14px;
}
.window .main .top-bar .top-menu li.active a,
.window .main .top-bar .top-menu li.active a:hover {
  background: #3AB0FF;
  color: #FFF;
  font-weight: bold;
}
.window .main .top-bar .top-menu a {
  padding: 0 25px;
  color: #EEE;
  line-height: 65px;
  display: block;
}
.window .main .top-bar .top-menu a:hover {
  color: #FFF;
  background: rgba(58, 176, 255, 0.35);
}
.window .main .top-bar .profile-box {
  float: right;
  background: #3AB0FF;
  height: 65px;
  line-height: 65px;
  padding: 0 20px;
  cursor: pointer;
}
.window .main .top-bar .profile-box .circle {
  background: #FFF;
  height: 30px;
  width: 30px;
  border-radius: 50px;
  display: block;
  float: left;
  margin-top: 15px;
}
.window .main .top-bar .profile-box .arrow {
  float: left;
  margin-left: 10px;
  line-height: 65px;
}
.window .main .featured-movie {
  position: relative;
}
.window .main .featured-movie .cover {
  width: 100%;
}
.window .main .featured-movie .corner-title {
  position: absolute;
  top: 20px;
  left: 20px;
  text-transform: uppercase;
  color: #FFF;
  background: rgba(25, 25, 25, 0.3);
  padding: 10px;
  font-size: 13px;
}
.window .main .featured-movie .bottom-bar {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  padding: 20px 30px;
  background: rgba(10, 10, 10, 0.8);
  color: #FFF;
}
.window .main .featured-movie .bottom-bar .title-container {
  float: left;
  font-weight: 100;
  font-size: 40px;
}
.window .main .featured-movie .bottom-bar .title-container .fa {
  margin-right: 10px;
  color: #FF3A3A;
}
.window .main .featured-movie .bottom-bar .title-container b {
  font-weight: 600;
}
.window .main .featured-movie .bottom-bar .right {
  float: right;
  font-size: 14px;
  margin-top: 14px;
}
.window .main .featured-movie .bottom-bar .right .stars {
  float: left;
  color: #F0C236;
  margin-right: 20px;
}
.window .main .featured-movie .bottom-bar .right .share {
  float: left;
  cursor: pointer;
}
.window .main .featured-movie .bottom-bar .right .share .fa {
  margin-right: 5px;
}
.window .main .movie-list .title-bar {
  padding: 20px;
  border-bottom: 1px solid #DDD;
  overflow: hidden;
}
.window .main .movie-list .title-bar .left {
  float: left;
  font-size: 15px;
  text-transform: uppercase;
}
.window .main .movie-list .title-bar .left .grey {
  color: #999;
}
.window .main .movie-list .title-bar .left .bold {
  font-weight: bold;
}
.window .main .movie-list .title-bar .left p {
  display: inline-block;
  margin-right: 10px;
}
.window .main .movie-list .title-bar .right {
  float: right;
}
.window .main .movie-list .title-bar .right a {
  color: #999;
  margin-left: 10px;
}
.window .main .movie-list .title-bar .right a.blue {
  color: #279CEB;
}
.window .main .movie-list .list {
  margin: 20px;
  margin-right: 0;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
.window .main .movie-list .list li {
  flex: 0 0 130px;
  padding-bottom: 30px;
  margin-right: 20px;
  position: relative;
}
.window .main .movie-list .list li:hover:after {
  opacity: 1;
}
.window .main .movie-list .list li:after {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 195px;
  content: '\f144';
  background: rgba(0, 0, 0, 0.3);
  border-radius: 5px;
  opacity: 0;
  color: #FFF;
  font-size: 40px;
  display: block;
  cursor: pointer;
  line-height: 195px;
  text-align: center;
  font-family: FontAwesome;
  font-style: normal;
  font-weight: normal;
  -webkit-font-smoothing: antialiased;
}
.window .main .movie-list .list li img {
  width: 130px;
  height: 195px;
  display: block;
  margin: 0 auto 5px auto;
  cursor: pointer;
}
.window .main .movie-list .list li .title,
.window .main .movie-list .list li .genre {
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  cursor: pointer;
}
.window .main .movie-list .list li .title {
  font-weight: bold;
  font-size: 13px;
  margin-bottom: 4px;
}
.window .main .movie-list .list li .genre {
  color: #999;
  font-size: 12px;
}
.window .main .movie-list .load-more {
  background: #EEE;
  padding: 15px;
  margin: 20px;
  border-radius: 5px;
  text-align: center;
  color: #666;
  display: block;
}
.window .main .movie-list .load-more:hover {
  background: #DDD;
}
.window .main .movie-list .load-more .fa {
  margin-left: 10px;
}
@media only screen and (max-width: 1220px) {
  .window > .sidebar {
    transform: translateX(-250px);
  }
  .window > .main {
    margin-left: 0;
  }
  .window > .main .top-bar .top-menu .menu-icon {
    display: block;
  }
  .sidebar-is-open .window > .sidebar {
    transform: translateX(0);
  }
  .sidebar-is-open .window > .main {
    transform: translateX(250px);
  }
}
</style></head><body>




<div class="window-margin">
	<div class="window">

		<aside class="sidebar">
			<div class="top-bar">
				<p class="logo">REPLEX</p>
			</div>

			<div class="search-box">
				<input type="text" placeholder="Search..."/>
				<p class="fa fa-search"></p>
			</div>

			<menu class="menu">
				<p class="menu-name">Movie trailers</p>
				<ul>
					<li class="active">
						<a href="#">Action / Adventure</a>
						<ul>
							<li><a href="#">Latest</a></li>
							<li class="active"><a href="#">Popular</a></li>
							<li><a href="#">Coming soon</a></li>
							<li><a href="#">Staff picks</a></li>
						</ul>
					</li>
					<li><a href="#">Animation</a></li>
					<li><a href="#">Comedy</a></li>
					<li><a href="#">Documentaries</a></li>
					<li><a href="#">Drama</a></li>
					<li><a href="#">Horror</a></li>
					<li><a href="#">Sci-Fi  / Fantasy</a></li>
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

			</div> <!-- top bar -->


			<div class="featured-movie">
				<img class="cover" src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394277453/backdrop_ggwxvq.jpg" alt="" class="cover" />
				<p class="corner-title">Staff pick</p>

				<div class="bottom-bar">
					<div class="title-container">
						<span class="fa fa-play-circle"></span>
						<b>Non-stop</b> Trailer #1
					</div>

					<div class="right">
						<div class="stars">
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star-half-o"></span>
							<span class="fa fa-star-o"></span>
						</div>
						<div class="share">
							<icon class="fa fa-share-square"></icon> Share
						</div>
					</div> <!-- right -->
				</div> <!-- bottom bar -->
			</div> <!-- featured -->


			<div class="movie-list">
				<div class="title-bar">
					<div class="left">
						<p class="bold">Popular Trailers</p>
						<p class="grey">Action / Adventure</p>
					</div> <!-- left -->
					<div class="right">
						<a class="blue" href="#">Rating <i class="fa fa-angle-down"></i></a>
						<a href="#">Newest</a>
						<a href="#">Oldest</a>
					</div> <!-- right -->
				</div> <!-- title-bar -->

				<ul class="list">
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283878/2014-03-08_140412_oavbye.png" alt="" class="cover" />
						<p class="title">Sin City: A Dame To Kill For</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140329_aawn02.png" alt="" class="cover" />
						<p class="title">Transcendence</p>
						<p class="genre">Action, Drama</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140239_kyg9i7.png" alt="" class="cover" />
						<p class="title">Need For Speed</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140052_dq4dyx.png" alt="" class="cover" />
						<p class="title">The Amazing Spiderman</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140104_tdgzka.png" alt="" class="cover" />
						<p class="title">Pompeii</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140248_fmufrz.png" alt="" class="cover" />
						<p class="title">Divergent</p>
						<p class="genre">Action, Sci-Fi</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140401_aewzsy.png" alt="" class="cover" />
						<p class="title">Guardians of the Galaxy</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140339_wck2gw.png" alt="" class="cover" />
						<p class="title">X-Men: Days of Fury</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140311_rj1det.png" alt="" class="cover" />
						<p class="title">Captain America: The Winter Soilder</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140248_fmufrz.png" alt="" class="cover" />
						<p class="title">Divergent</p>
						<p class="genre">Action, Sci-Fi</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140132_bcnfqk.png" alt="" class="cover" />
						<p class="title">RoboCop (2014)</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140329_aawn02.png" alt="" class="cover" />
						<p class="title">Transcendence</p>
						<p class="genre">Action, Drama</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140239_kyg9i7.png" alt="" class="cover" />
						<p class="title">Need For Speed</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140157_wvifsp.png" alt="" class="cover" />
						<p class="title">The Lego Movie</p>
						<p class="genre">Adventure, Animation</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283878/2014-03-08_140412_oavbye.png" alt="" class="cover" />
						<p class="title">Sin City: A Dame To Kill For</p>
						<p class="genre">Action, Crime</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140339_wck2gw.png" alt="" class="cover" />
						<p class="title">X-Men: Days of Fury</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283879/2014-03-08_140052_dq4dyx.png" alt="" class="cover" />
						<p class="title">The Amazing Spiderman</p>
						<p class="genre">Action, Adventure</p>
					</li>
					<li>
						<img src="https://res.cloudinary.com/dddcqqk0g/image/upload/v1394283880/2014-03-08_140248_fmufrz.png" alt="" class="cover" />
						<p class="title">Divergent</p>
						<p class="genre">Action, Sci-Fi</p>
					</li>
				</ul>

				<a href="#" class="load-more">Show more movies <span class="fa fa-plus"></span></a>

			</div> <!-- movie list -->


		</div> <!-- main -->

	</div> <!-- window -->
</div> <!-- window margin -->
<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
<script >jQuery(document).ready(function($) {

	$('a').on('click', function(e) {
		e.preventDefault();
	});

	$('.trigger-sidebar-toggle').on('click', function() {
		$('body').toggleClass('sidebar-is-open');
	});

});
//# sourceURL=pen.js
</script>
</body></html>