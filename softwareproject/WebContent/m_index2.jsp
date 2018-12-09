<!DOCTYPE html> 
<head><script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script><script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'></script><meta charset='UTF-8'><meta name="robots" content="noindex"><link rel="shortcut icon" type="image/x-icon" href="//production-assets.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" /><link rel="mask-icon" type="" href="//production-assets.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" /><link rel="canonical" href="https://codepen.io/ryanparag/pen/LLrVbo?depth=everything&order=popularity&page=10&q=movie&show_forks=false" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css'><link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<style class="cp-pen-styles">@import url("https://fonts.googleapis.com/css?family=Arimo:400,700");
body {
  height: 100%;
  width: 100%;
  background: #e9e9e9;
  font-family: 'Arimo', Arial, sans-serif;
  font-weight: 400;
  font-size: 14px;
  color: #010b26;
}

* {
  -webkit-transition: 300ms;
  transition: 300ms;
}

.intro {
  text-align: center;
}

ul {
  list-style-type: none;
}

h1, h2, h3, h4, h5, p {
  font-weight: 400;
}

a {
  text-decoration: none;
  color: inherit;
}

a:hover {
  color: #6ABCEA;
}

.container {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
  max-width: 100%;
  margin-top: 10vh;
  margin-left: auto;
  margin-right: auto;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

.movie-card {
  background: #ffffff;
  box-shadow: 0px 6px 18px rgba(0, 0, 0, 0.1);
  width: 100%;
  max-width: 315px;
  margin: 2em;
  border-radius: 10px;
  display: inline-block;
}

.movie-header {
  padding: 0;
  margin: 0;
  height: 367px;
  width: 100%;
  display: block;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
}

.manOfSteel {
  background: url("http://henrycavill.org/images/Films/2013-Man-of-Steel/posters/3-Walmart-Superman-a.jpg");
  background-size: cover;
}

.babyDriver {
  background: url("https://i0.wp.com/media2.slashfilm.com/slashfilm/wp/wp-content/images/baby-driver-poster.jpg");
  background-size: cover;
}

.theDarkTower {
  background: url("http://cdn.collider.com/wp-content/uploads/2017/03/the-dark-tower-poster.jpg");
  background-size: cover;
  background-position: 100% 100%;
}

.bladeRunner2049 {
  background: url("http://cdn.collider.com/wp-content/uploads/2017/05/blade-runner-2049-poster-ryan-gosling.jpeg");
  background-size: cover;
  background-position: 100% 80%;
}

.header-icon-container {
  position: relative;
}

.header-icon {
  width: 100%;
  height: 367px;
  line-height: 367px;
  text-align: center;
  vertical-align: middle;
  margin: 0 auto;
  color: #ffffff;
  font-size: 54px;
  text-shadow: 0px 0px 20px #6abcea, 0px 5px 20px #6ABCEA;
  opacity: .85;
}

.header-icon:hover {
  background: rgba(0, 0, 0, 0.15);
  font-size: 74px;
  text-shadow: 0px 0px 20px #6abcea, 0px 5px 30px #6ABCEA;
  border-top-left-radius: 10px;
  border-top-right-radius: 10px;
  opacity: 1;
}

.movie-card:hover {
  -webkit-transform: scale(1.03);
          transform: scale(1.03);
  box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.08);
}

.movie-content {
  padding: 18px 18px 24px 18px;
  margin: 0;
}

.movie-content-header, .movie-info {
  display: table;
  width: 100%;
}

.movie-title {
  font-size: 24px;
  margin: 0;
  display: table-cell;
}

.imax-logo {
  width: 50px;
  height: 15px;
  background: url("https://6a25bbd04bd33b8a843e-9626a8b6c7858057941524bfdad5f5b0.ssl.cf5.rackcdn.com/media_kit/3e27ede823afbf139c57f1c78a03c870.jpg") no-repeat;
  background-size: contain;
  display: table-cell;
  float: right;
  position: relative;
  margin-top: 5px;
}

.movie-info {
  margin-top: 1em;
}

.info-section {
  display: table-cell;
  text-transform: uppercase;
  text-align: center;
}

.info-section:first-of-type {
  text-align: left;
}

.info-section:last-of-type {
  text-align: right;
}

.info-section label {
  display: block;
  color: rgba(0, 0, 0, 0.5);
  margin-bottom: .5em;
  font-size: 9px;
}

.info-section span {
  font-weight: 700;
  font-size: 11px;
}

@media screen and (max-width: 500px) {
  .movie-card {
    width: 95%;
    max-width: 95%;
    margin: 1em;
    display: block;
  }

  .container {
    padding: 0;
    margin: 0;
  }
}
</style></head><body>
<p class="intro">Based from <b><a href="https://dribbble.com/shots/2241918-Movie-Ticket-Card-Sketch-freebie" target="_blank">Soumya's Movie Ticket Card</a></b><p>
	
<div class="container">

	
	<div class="movie-card">
		<div class="movie-header manOfSteel">
			<div class="header-icon-container">
				<a href="#">
					<i class="material-icons header-icon"></i>
				</a>
			</div>
		</div><!--movie-header-->
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Man of Steel</h3>
				</a>
				<div class="imax-logo"></div>
			</div>
			<div class="movie-info">
				<div class="info-section">
					<label>Date & Time</label>
					<span>Sun 8 Sept - 10:00PM</span>
				</div><!--date,time-->
				<div class="info-section">
					<label>Screen</label>
					<span>03</span>
				</div><!--screen-->
				<div class="info-section">
					<label>Row</label>
					<span>F</span>
				</div><!--row-->
				<div class="info-section">
					<label>Seat</label>
					<span>21,22</span>
				</div><!--seat-->
			</div>
		</div><!--movie-content-->
	</div><!--movie-card-->
	
	<div class="movie-card">
		<div class="movie-header babyDriver">
			<div class="header-icon-container">
				<a href="#">
					<i class="material-icons header-icon"></i>
				</a>
			</div>
		</div><!--movie-header-->
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Baby Driver</h3>
				</a>
				<div class="imax-logo"></div>
			</div>
			<div class="movie-info">
				<div class="info-section">
					<label>Date & Time</label>
					<span>Tue 4 July - 05:00PM</span>
				</div><!--date,time-->
				<div class="info-section">
					<label>Screen</label>
					<span>01</span>
				</div><!--screen-->
				<div class="info-section">
					<label>Row</label>
					<span>H</span>
				</div><!--row-->
				<div class="info-section">
					<label>Seat</label>
					<span>15</span>
				</div><!--seat-->
			</div>
		</div><!--movie-content-->
	</div><!--movie-card-->
	
	<div class="movie-card">
		<div class="movie-header theDarkTower">
			<div class="header-icon-container">
				<a href="#">
					<i class="material-icons header-icon"></i>
				</a>
			</div>
		</div><!--movie-header-->
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">The Dark Tower</h3>
				</a>
				<div class="imax-logo"></div>
			</div>
			<div class="movie-info">
				<div class="info-section">
					<label>Date & Time</label>
					<span>Wed 16 Aug - 07:00PM</span>
				</div><!--date,time-->
				<div class="info-section">
					<label>Screen</label>
					<span>06</span>
				</div><!--screen-->
				<div class="info-section">
					<label>Row</label>
					<span>C</span>
				</div><!--row-->
				<div class="info-section">
					<label>Seat</label>
					<span>18</span>
				</div><!--seat-->
			</div>
		</div><!--movie-content-->
	</div><!--movie-card-->
	
	<div class="movie-card">
		<div class="movie-header bladeRunner2049">
			<div class="header-icon-container">
				<a href="#">
					<i class="material-icons header-icon"></i>
				</a>
			</div>
		</div><!--movie-header-->
		<div class="movie-content">
			<div class="movie-content-header">
				<a href="#">
					<h3 class="movie-title">Blade Runner 2049</h3>
				</a>
				<div class="imax-logo"></div>
			</div>
			<div class="movie-info">
				<div class="info-section">
					<label>Date & Time</label>
					<span>Mon 16 Oct - 10:00PM</span>
				</div><!--date,time-->
				<div class="info-section">
					<label>Screen</label>
					<span>06</span>
				</div><!--screen-->
				<div class="info-section">
					<label>Row</label>
					<span>D</span>
				</div><!--row-->
				<div class="info-section">
					<label>Seat</label>
					<span>05,06</span>
				</div><!--seat-->
			</div>
		</div><!--movie-content-->
	</div><!--movie-card-->
	
</div><!--container-->

</body></html>