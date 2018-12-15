<%@page import="java.awt.Button"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%> 
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 예매 공간</title>
<style type="text/css">

	#img.absolute
	{
		height:100px;
		width:100px;
		position: absolute;
		left:325px;
		top: 50px;
	}
	
</style>
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
					class="btn btn-default btn-lg" id="buttonA">속초에 가보니 피카츄가 울고 있다.</button>
				<button type="button" class="btn btn-default btn-lg" id="buttonB">붉은 돼지를 먹어라.</button>
				<button type="button" class="btn btn-default btn-lg" id="buttonC">니 군번은. </button>
				<button onClick="checkBUtton" type="button"
					class="btn btn-default btn-lg" id="buttonD">국가부도의날.</button>
				<button type="button" class="btn btn-default btn-lg" id="buttonE">번개맨의비밀.</button>
				<button type="button" class="btn btn-default btn-lg" id="buttonF">성난황소. </button>
				<button onClick="checkBUtton" type="button"
					class="btn btn-default btn-lg" id="buttonG">도어락.</button>
				<button type="button" class="btn btn-default btn-lg" id="buttonH">런닝맨-풀룰루의역습.</button>
				<button type="button" class="btn btn-default btn-lg" id="buttonI">모털엔진. </button>
				<button type="button" class="btn btn-default btn-lg" id="buttonJ">보헤미안랩소디. </button>
				<button type="button" class="btn btn-default btn-lg" id="buttonK">완벽한 타인.</button>
				<button type="button" class="btn btn-default btn-lg" id="buttonL">호두까기인형과 4개의 왕국.</button>			
			</div>
		</div>
			
			<br>
		
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				
				<div class="row">
					<div class="col-lg-12">
						<p id="000">속초에 가보니 피카츄가 울고 있다. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=001 onclick="button_click1('2관','09:30',40,'속초에 가보니 피카츄가 울고 있다.');">
						2관<br> 09:30 <br>남은좌석 :<a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=002 onclick="button_click2('1관','11:30',40, '속초에 가보니 피카츄가 울고 있다.');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=003 onclick="button_click3('3관','15:30',40, '속초에 가보니 피카츄가 울고 있다.');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/station_of_sokcho.jpg" id="img001" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
				
				
				
				<div class="row">
					<div class="col-lg-12">
						<p id="004">붉은 돼지를 먹어라. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=005 onclick="button_click1('2관','09:30',40,'붉은 돼지를 먹어라.');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=006 onclick="button_click2('1관','11:30',40,'붉은 돼지를 먹어라.');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=007 onclick="button_click3('3관','15:30',40,'붉은 돼지를 먹어라.');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/pig_of_red.jpg" id="img002" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
						
			
			<div class="row">
					<div class="col-lg-12">
						<p id="008">니 군번은. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=009 onclick="button_click1('2관','09:30',40,'니 군번은');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=010 onclick="button_click2('1관','11:30',40,'니 군번은');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=011 onclick="button_click3('3관','15:30',40,'니 군번은');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/your_arm_number.jpg" id="img003" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
				
				
			<div class="row">
					<div class="col-lg-12">
						<p id="012">국가부도의날. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=013 onclick="button_click1('2관','09:30',40,'국가부도의날');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=014 onclick="button_click2('1관','11:30',40,'국가부도의날');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=015 onclick="button_click3('3관','15:30',40,'국가부도의날');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/드라마-국가부도의날.PNG" id="img004" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
						
				
			<div class="row">
					<div class="col-lg-12">
						<p id="016">번개맨의비밀. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=017 onclick="button_click1('2관','09:30',40,'번개맨의비밀');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=018 onclick="button_click2('1관','11:30',40,'번개맨의비밀');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=019 onclick="button_click3('3관','15:30',40,'번개맨의비밀');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/뮤지컬-번개맨의비밀.PNG" id="img005" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
								
			
				
			<div class="row">
					<div class="col-lg-12">
						<p id="020">성난황소. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=021 onclick="button_click1('2관','09:30',40,'성난황소');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=022 onclick="button_click2('1관','11:30',40,'성난황소');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=023 onclick="button_click3('3관','15:30',40,'성난황소');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/범죄,액션-성난황소.PNG" id="img006" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
									
				
			<div class="row">
					<div class="col-lg-12">
						<p id="024">도어락. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=025 onclick="button_click1('2관','09:30',40,'도어락');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=026 onclick="button_click2('1관','11:30',40,'도어락');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=027 onclick="button_click3('3관','15:30',40,'도어락');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/스릴러-도어락.PNG" id="img007" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
									
				
			<div class="row">
					<div class="col-lg-12">
						<p id="028">런닝맨-풀룰루의역습. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=029 onclick="button_click1('2관','09:30',40,'런닝맨-풀룰루의역습');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=030 onclick="button_click2('1관','11:30',40,'런닝맨-풀룰루의역습');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=031 onclick="button_click3('3관','15:30',40,'런닝맨-풀룰루의역습');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/애니메이션-런닝맨_풀룰루의역습.PNG" id="img008" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
							
			
			<div class="row">
					<div class="col-lg-12">
						<p id="032">모털엔진. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=033 onclick="button_click1('2관','09:30',40,'모털엔진');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=034 onclick="button_click2('1관','11:30',40,'모털엔진');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=035 onclick="button_click3('3관','15:30',40,'모털엔진');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/액션,모험,sf-모털엔진.PNG" id="img009" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
					

			<div class="row">
					<div class="col-lg-12">
						<p id="036">보헤미안랩소디. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=037 onclick="button_click1('2관','09:30',40,'보헤미안랩소디');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=038 onclick="button_click2('1관','11:30',40,'보헤미안랩소디');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=039 onclick="button_click3('3관','15:30',40,'보헤미안랩소디');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/드라마-보헤미안랩소디.PNG" id="img010" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">	
					</div>
				</div>
				
			
			<div class="row">
					<div class="col-lg-12">
						<p id="040">완벽한타인. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=041 onclick="button_click1('2관','09:30',40,'완벽한타인');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=042 onclick="button_click2('1관','11:30',40,'완벽한타인');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=043 onclick="button_click3('3관','15:30',40,'완벽한타인');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/드라마,코미디-완벽한타인.PNG" id="img011" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">
					</div>
				</div>
									
			
			<div class="row">
					<div class="col-lg-12">
						<p id="044">호두까기 인형과 4개의 왕국. [해당 버튼을 클릭해주세요.]</p>
						<button type="button" class="btn btn-default btn-lg" id=045 onclick="button_click1('2관','09:30',40,'호두까기 인형과 4개의 왕국');">
						2관<br> 09:30 <br>남은좌석 : <a id="seatA">40</a>
						</button>
						<button type="button" class="btn btn-default btn-lg" id=046 onclick="button_click2('1관','11:30',40,'호두까기 인형과 4개의 왕국');">
						1관 <br> 11:30<br>남은좌석 : 40
						</button>
						<button type="button" class="btn btn-default btn-lg" id=047 onclick="button_click3('3관','15:30',40,'호두까기 인형과 4개의 왕국');">
						3관 <br>15:30 <br>남은좌석 : 40
						</button>
						<img src="./img/판타지,드라마-호두까기인형과 4개의 왕국.PNG" id="img012" style="height: 200px; width: 300px; position: absolute; left: 800px; top: 0px;">	
					</div>
				</div>
							
			
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
			

	</div>
	<!-- /.container -->
	
	<script type="text/javascript">
	
		
		var a,b,c,d,e,f,g,h,i,j,k,lcontrol;
		a=0;b=0;c=0;
		d=0;e=0;f=0;
		g=0;h=0;i=0;
		j=0;k=0;l=0;
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
	 $("#012").hide();	
	 $("#013").hide();
	 $("#014").hide();
	 $("#015").hide();
	 
	 $("#016").hide();	
	 $("#017").hide();
	 $("#018").hide();
	 $("#019").hide();
	 $("#020").hide();
	 
	 $("#021").hide();
	 $("#022").hide();
	 $("#023").hide();
	 $("#024").hide();
	 $("#025").hide();
	 
	 $("#026").hide();
	 $("#027").hide();
	 $("#028").hide();
	 $("#029").hide();
	 $("#030").hide();
	 
	 $("#031").hide();
	 $("#032").hide();
	 $("#033").hide();
	 $("#034").hide();
	 $("#035").hide();
	 
	 $("#036").hide();
	 $("#037").hide();
	 $("#038").hide();
	 $("#039").hide();
	 $("#040").hide();
	 
	 $("#041").hide();
	 $("#042").hide();
	 $("#043").hide();
	 $("#044").hide();
	 $("#045").hide();
	 
	 $("#046").hide();
	 $("#047").hide();
	 
	 $("#img001").hide();
	 $("#img002").hide();
	 $("#img003").hide();
	 $("#img004").hide();
	 $("#img005").hide();
	 $("#img006").hide();
	 $("#img007").hide();
	 $("#img008").hide();
	 $("#img009").hide();
	 $("#img010").hide();
	 $("#img011").hide();
	 $("#img012").hide();
	 
	 
	 
	 $("#buttonA").click(function(){
		 	if(a==0&&control==0){
		 	 $("#000").show();	
		 	 $("#001").show();
		 	 $("#002").show();
		 	 $("#003").show();
		 	$("#img001").show();
		 	a=1; control=1;
		 	}else if(a==1&&control==1){
			 $("#000").hide();	
			 $("#001").hide();
			 $("#002").hide();
			 $("#003").hide();
			 $("#img001").hide();
			 a=0; control=0;
		 	}
		 	
	 });
	 
	 $("#buttonB").click(function(){
		 if(b==0&&control==0){
		 	$("#004").show();	
		 	$("#005").show();
		 	$("#006").show();
		 	$("#007").show();
		 	$("#img002").show();
		 	b=1; control=1;
		 }else if(b==1&&control==1)
		 {
			$("#004").hide();	
			$("#005").hide();
			$("#006").hide();
			$("#007").hide();
			$("#img002").hide();
			b=0; control=0;
		 }
	 });
	 
	 $("#buttonC").click(function(){
		 if(c==0 &&control==0){
		 $("#008").show();	
		 $("#009").show();
		 $("#010").show();
		 $("#011").show();
		 $("#img003").show();
		 c=1; control=1;
		 }else if (c==1 &&control==1)
		 {
		 $("#008").hide();	
		 $("#009").hide();
		 $("#010").hide();
		 $("#011").hide();
		 $("#img003").hide();
		 c=0; control=0;
		 }
	 });
	 
	 $("#buttonD").click(function(){
		 if(d==0 &&control==0){
		 $("#012").show();	
		 $("#013").show();
		 $("#014").show();
		 $("#015").show();
		 $("#img004").show();
		 d=1; control=1;
		 }else if (d==1 &&control==1)
		 {
		 $("#012").hide();	
		 $("#013").hide();
		 $("#014").hide();
		 $("#015").hide();
		 $("#img004").hide();
		 d=0; control=0;
		 }
	 });
	 
	 $("#buttonE").click(function(){
		 if(e==0 &&control==0){
		 $("#016").show();	
		 $("#017").show();
		 $("#018").show();
		 $("#019").show();
		 $("#img005").show();
		 e=1; control=1;
		 }else if (e==1 &&control==1)
		 {
		 $("#016").hide();	
		 $("#017").hide();
		 $("#018").hide();
		 $("#019").hide();
		 $("#img005").hide();
		 e=0; control=0;
		 }
	 });
	 
	 $("#buttonF").click(function(){
		 if(f==0 &&control==0){
		 $("#020").show();	
		 $("#021").show();
		 $("#022").show();
		 $("#023").show();
		 $("#img006").show();
		 f=1; control=1;
		 }else if (f==1 &&control==1)
		 {
		 $("#020").hide();	
		 $("#021").hide();
		 $("#022").hide();
		 $("#023").hide();
		 $("#img006").hide();
		 f=0; control=0;
		 }
	 });
	 
	 $("#buttonG").click(function(){
		 if(g==0 &&control==0){
		 $("#024").show();	
		 $("#025").show();
		 $("#026").show();
		 $("#027").show();
		 $("#img007").show();
		 g=1; control=1;
		 }else if (g==1 &&control==1)
		 {
		 $("#024").hide();	
		 $("#025").hide();
		 $("#026").hide();
		 $("#027").hide();
		 $("#img007").hide();
		 g=0; control=0;
		 }
	 });
	 
	 $("#buttonH").click(function(){
		 if(h==0 &&control==0){
		 $("#028").show();	
		 $("#029").show();
		 $("#030").show();
		 $("#031").show();
		 $("#img008").show();
		 h=1; control=1;
		 }else if (h==1 &&control==1)
		 {
		 $("#028").hide();	
		 $("#029").hide();
		 $("#030").hide();
		 $("#031").hide();
		 $("#img008").hide();
		 h=0; control=0;
		 }
	 });
	 
	 $("#buttonI").click(function(){
		 if(i==0 &&control==0){
		 $("#032").show();	
		 $("#033").show();
		 $("#034").show();
		 $("#035").show();
		 $("#img009").show();
		 i=1; control=1;
		 }else if (i==1 &&control==1)
		 {
		 $("#032").hide();	
		 $("#033").hide();
		 $("#034").hide();
		 $("#035").hide();
		 $("#img009").hide();
		 i=0; control=0;
		 }
	 });	

	 
	 $("#buttonJ").click(function(){
		 if(j==0 &&control==0){
		 $("#036").show();	
		 $("#037").show();
		 $("#038").show();
		 $("#039").show();
		 $("#img010").show();
		 j=1; control=1;
		 }else if (j==1 &&control==1)
		 {
		 $("#036").hide();	
		 $("#037").hide();
		 $("#038").hide();
		 $("#039").hide();
		 $("#img010").hide();
		 j=0; control=0;
		 }
	 });
	 
	 $("#buttonK").click(function(){
		 if(k==0 &&control==0){
		 $("#040").show();	
		 $("#041").show();
		 $("#042").show();
		 $("#043").show();
		 $("#img011").show();
		 k=1; control=1;
		 }else if (k==1 &&control==1)
		 {
		 $("#040").hide();	
		 $("#041").hide();
		 $("#042").hide();
		 $("#043").hide();
		 $("#img011").hide();
		 k=0; control=0;
		 }
	 });
	 
	 $("#buttonL").click(function(){
		 if(l==0 &&control==0){
		 $("#044").show();	
		 $("#045").show();
		 $("#046").show();
		 $("#047").show();
		 $("#img012").show();
		 l=1; control=1;
		 }else if (l==1 &&control==1)
		 {
		 $("#044").hide();	
		 $("#045").hide();
		 $("#046").hide();
		 $("#047").hide();
		 $("#img012").hide();
		 l=0; control=0;
		 }
	 });	
	 
	 function button_click1(room1,time1,seat1,movie1) {
			alert("고객님께서 선택하신 사항은 영화는 <"+movie1+"> 이며 제"+room1+"이며 "+time1+"이며 남은 좌석은 "+seat1+"분 입니다.");
			location.href="result.jsp?room="+ encodeURI(room1 , "UTF-8")+"&time="+encodeURI(time1 , "UTF-8")+"&seat="+encodeURI(seat1 , "UTF-8")
			+"&movie="+encodeURI(movie1 , "UTF-8");
			
		}
	 function button_click2(room2,time2,seat2,movie2) {
		 alert("고객님께서 선택하신 사항은 영화는 <"+movie2+"> 이며 제"+room2+"이며 "+time2+"이며 남은 좌석은 "+seat2+"분 입니다.");
			location.href="result.jsp?room="+ encodeURI(room2 , "UTF-8")+"&time="+encodeURI(time2 , "UTF-8")+"&seat="+encodeURI(seat2 , "UTF-8")
			+"&movie="+encodeURI(movie2 , "UTF-8");
		}
	 function button_click3(room3,time3,seat3,movie3) {
			alert("고객님께서 선택하신 사항은 영화는 <"+movie3+"> 이며 제"+room3+"이며 "+time3+"이며 남은 좌석은 "+seat3+"분 입니다.");
			location.href="result.jsp?room="+ encodeURI(room3 , "UTF-8")+"&time="+encodeURI(time3 , "UTF-8")+"&seat="+encodeURI(seat3 , "UTF-8")
			+"&movie="+encodeURI(movie3 , "UTF-8");
			
		}
	 
	 
	</script>
</body>
</html>