<%@page import="java.awt.Button"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 예매 공간</title>
</head>
<body>
<body>

	<jsp:include page="nav.jsp" />
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel " class="carousel slide black" data-ride="carousel">

		<div class="carousel-inner" role="listbox">
		
			<h1 align="center"> 영화 예매</h1>
			
		</div>
		
	</div>

	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			
			<h1 class="page-header">보고싶은 영화를 선택하세요!</h1>
			</div>

		</div>

		<div class="row">
			<div class="col-lg-12">
				<p class="select_theater_Movie">영화</p>
				<button onClick="checkBUtton" type="button"
					class="btn btn-default btn-lg" id="buttonA">나는 최고다</button>
				<button type="button" class="btn btn-default btn-lg" id="buttonB">내이름은
					돼지</button>
				<button type="button" class="btn btn-default btn-lg" id="buttonC">멋진 나의
					이름은</button>
			</div>
		</div>
			
			<br>
		
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				
				<div class="row">
					<div class="col-lg-12">
						<p id="000">나는 최고다</p>
						<button type="button" class="btn btn-default btn-lg" id=001>
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">?</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=002>
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=003>
						3관 <br>15:30 <br>남은좌석 : 23
						</button>
					</div>
				</div>
				
				<div class="row">
					<div class="col-lg-12">
						<p id="004">내이름은 돼지</p>
						<button type="button" class="btn btn-default btn-lg" id=005>
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">?</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=006>
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=007>
						3관 <br>15:30 <br>남은좌석 : 23
						</button>
					</div>
				</div>		
			</div>
			
			<div class="row">
					<div class="col-lg-12">
						<p id="008">멋진 나의 이름은</p>
						<button type="button" class="btn btn-default btn-lg" id=009>
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">?</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=010>
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=011>
						3관 <br>15:30 <br>남은좌석 : 23
						</button>
					</div>
				</div>		
			</div>
			
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				
				<br> <br>
				<button type="button" class="btn btn-default btn-lg">좌석 선택하기</button>
					
			</div>
			<!-- /.col-lg-4 -->
		<!-- /.row -->


		<!-- FOOTER -->
		<footer>
		<p class="pull-right">
			<a href="#">Back to top</a>
		</p>
		<p>
			<br>
			&copy; 2018 오유이동 영화관, Inc. &middot; <a href="#">Privacy</a> &middot; <a
				href="#">Terms</a>
		</p>
		</footer>

	</div>
	<!-- /.container -->
	
	<script type="text/javascript">
	
		
		var a,b,c,control;
		a=0;
		b=0;
		c=0;
		control=0;
	 $("#000").hide();	
	 $("#001").hide();
	 $("#002").hide();
	 $("#003").hide();
	 $("#004").hide();	
	 $("#005").hide();
	 $("#006").hide();
	 $("#007").hide();
	 $("#008").hide();	
	 $("#009").hide();
	 $("#010").hide();
	 $("#011").hide();
	 
	 
	 $("#buttonA").click(function(){
		 	if(a==0&&control==0){
		 	 $("#000").show();	
		 	 $("#001").show();
		 	 $("#002").show();
		 	 $("#003").show();
		 	a=1; control=1;
		 	}else if(a==1&&control==1){
			 $("#000").hide();	
			 $("#001").hide();
			 $("#002").hide();
			 $("#003").hide();	
			 a=0; control=0;
		 	}
		 	
	 });
	 
	 $("#buttonB").click(function(){
		 if(b==0&&control==0){
		 	$("#004").show();	
		 	$("#005").show();
		 	$("#006").show();
		 	$("#007").show();
		 	b=1; control=1;
		 }else if(b==1&&control==1)
		 {
			$("#004").hide();	
			$("#005").hide();
			$("#006").hide();
			$("#007").hide();	
			b=0; control=0;
		 }
	 });
	 
	 $("#buttonC").click(function(){
		 if(c==0 &&control==0){
		 $("#008").show();	
		 $("#009").show();
		 $("#010").show();
		 $("#011").show();
		 c=1; control=1;
		 }else if (c==1 &&control==1)
		 {
		 $("#008").hide();	
		 $("#009").hide();
		 $("#010").hide();
		 $("#011").hide();
		 c=0; control=0;
		 }
	 });
	</script>
	
</body>
</html>