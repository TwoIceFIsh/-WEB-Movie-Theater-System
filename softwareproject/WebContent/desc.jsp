<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사이트 기술 설명</title>
</head>
<body>
	<jsp:include page="testNavbar.jsp" />

	<div id="page-wrapper">
		<div class="row">

			<div class="col-lg-12">

				<h1 class="page-header">사이트 기술 설명</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>


		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">버튼식 명령</div>
					<!-- /.panel-heading -->
					<div class="panel-body row">


						<div class="col-md-6" style="height: 750px; width: 350px;">
							<img alt="That Image" style="max-height: 100%; max-width: 100%;"
								src="image/A.jpeg">


						</div>

						<div class="col-md-6">
							<p class="text-muted">
							<h3>기능 설명 :</h3>
							<br>
							<h4>1. 버튼 하단 영역을 클릭시 페이지내 자바스크립트 함수를 호출합니다.</h4>
							<br>
							<code>
								&lt;a onClick='waterF()'&gt; <br>&nbsp; 물 공급시 클릭하세요 <br>&lt;/a&gt;
							</code>
							<br>
							<h4>2. 해당 함수는 로직 처리 Servlet으로 버튼의 종류와 On/Off 인자를 실어 보냅니다.</h4>

							<code>
								waterF() 상단부 <br> -------<br> function waterF() { <br>&nbsp;
								var userID = $('#userID').val(); <br>&nbsp; var func =
								"wPump"; <br>&nbsp; var status = "just"; <br> <br>&nbsp;
								$.ajax({ <br>&nbsp;&nbsp; type : 'POST', <br>&nbsp;&nbsp;
								url : './UserControlServlet', <br> &nbsp;&nbsp; data : { <br>
								<br> &nbsp;&nbsp;&nbsp; userID : userID, <br>
								&nbsp;&nbsp;&nbsp; func : func, <br> &nbsp;&nbsp;&nbsp;
								status : status <br> &nbsp;&nbsp; },
							</code>
							<br>
							<h4>3. Servlet에서 인자의 종류를 분류 및 Java 코드를 호출합니다.</h4>
							<br>
							<code>
								Servlet 상단부<br>------<br>protected void
								doPost(HttpServletRequest request, HttpServletResponse response)
								throws ServletException, IOException { <br> &nbsp; int
								result = -1; <br>&nbsp; String userID =
								request.getParameter("userID"); <br>&nbsp; String func =
								request.getParameter("func"); <br>&nbsp; String status =
								request.getParameter("status"); <br> <br>&nbsp;
								if(func.equals("wPump")) <br>&nbsp;&nbsp; result = new
								UserDAO().controlwPump( userID, status); <br>



							</code>
							<br>
							<h4>4. 자바 코드에서 DB접속 및 해당 기능쿼리문을 실행후 결과여부를 반환합니다.</h4>
							<code>
								<br>디비접속(중략)<br> <br>String SQL = "UPDATE MACHINE
								SET wPump =? WHERE sID = '개인 시리얼 번호'"; <br>try { <br>


								<br>&nbsp; result = getControlStatus(col, userID); <br>
								<br>&nbsp; if(status.equals("just")) { <br>
								&nbsp;&nbsp; if(result == 1) <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								pstmt.setInt(1, 0); <br>&nbsp;&nbsp;&nbsp;if(result == 0) <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								pstmt.setInt(1, 1); <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								pstmt.executeUpdate(); <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								return result; <br> &nbsp; } <br> <br> &nbsp;
								if(result == 1) <br> &nbsp;&nbsp; pstmt.setInt(1, value); <br>
								&nbsp; if(result == 0) <br> &nbsp;&nbsp; pstmt.setInt(1,
								value); <br> <br> &nbsp;return result; <br> }
							</code>
							<br>
							<h4>5. Servlet에서 받은 결과여부를 자바스크립트 ajax의 result값에 전달합니다.</h4>
							<br>
							<code>
								Servlet 하단부<br>------<br>&nbsp;&nbsp;
								response.getWriter().write(result+""); <br>&nbsp;} <br>}
							</code>
							<br>
							<h4>6. 자바스크립트에서 result의 값을 분류해 응답메세지(동작완료)를 재 작성합니다.</h4>
							<code>
								waterF() 하단부<br>-------<br> <br> &nbsp;&nbsp;
								success : function(result) { <br> <br>
								&nbsp;&nbsp;&nbsp;if (result == 0) { <br>
								&nbsp;&nbsp;&nbsp;&nbsp; $('#waterT').html('ON'); <br>&nbsp;&nbsp;&nbsp;&nbsp;
								$('#waterT').css("color", "white"); <br> <br>&nbsp;&nbsp;&nbsp;}
								<br> <br>&nbsp;&nbsp;&nbsp;if (result == 1) { <br>&nbsp;&nbsp;&nbsp;&nbsp;
								$('#waterT').html('OFF'); <br>&nbsp;&nbsp;&nbsp;&nbsp;
								$('#waterT').css("color", "white"); <br> <br>&nbsp;&nbsp;&nbsp;}

								<br> <br>&nbsp;&nbsp;&nbsp;if (result == -1) { <br>&nbsp;&nbsp;&nbsp;&nbsp;
								$('#waterT').html('malfunction.'); <br>&nbsp;&nbsp;&nbsp;&nbsp;
								$('#waterT').css("color", "red"); <br>&nbsp;&nbsp;&nbsp;} <br>
								&nbsp;&nbsp;} <br>&nbsp;}); <br>}
							</code>



						</div>


					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>

			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">음성인식 명령</div>
					<!-- /.panel-heading -->
					<div class="panel-body row">


						<div class="col-md-6" style="height: 750px; width: 350px;">
							<img alt="That Image" style="max-height: 100%; max-width: 100%;"
								src="image/D.jpeg">


						</div>

						<div class="col-md-6">
							<p class="text-muted">
							<h3>기능 설명 :</h3>
							<br>
							<h4>1. 마이크 버튼을 눌러 음성변환 자바스크립트를 호출합니다.</h4>
							<br>
							<code> 자바스크립트 로직을 통해 나온 문장을 변수에담아 fireConmmand(string)으로
								넘깁니다. </code>
							<br>
							<h4>2. text에 적혀진 문장의 끝을 비교해 함수를 실행합니다.</h4>
							<br>
							<code>
								function fireCommand(string) { <br> &nbsp;if
								(string.endsWith('조명 켜') ) <br>&nbsp;&nbsp; ledOn(); <br>
								<br>&nbsp;if (string.endsWith('조명 꺼') ) <br>&nbsp;&nbsp;
								ledOff(); <br> <br>&nbsp;if (string.endsWith('선풍기 켜')
								) <br>&nbsp;&nbsp; penOn(); <br> <br>&nbsp;if
								(string.endsWith('선풍기 꺼') ) <br>&nbsp;&nbsp; penOff(); <br>
								<br>&nbsp;if (string.endsWith('가림막 올려') ) <br>
								&nbsp;&nbsp;screenUp(); <br>(후략) <br> }

							</code>
							<br>
							<h4>3. 수행 로직은 버튼명령의 2번 부분과 같습니다.</h4>





						</div>


					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">실시간 그래프</div>
					<!-- /.panel-heading -->
					<div class="panel-body row">


						<div class="col-md-6" style="height: 750px; width: 350px;">
							<img alt="That Image" style="max-height: 100%; max-width: 100%;"
								src="image/B.jpeg">


						</div>

						<div class="col-md-6">
							<p class="text-muted">
							<h3>기능 설명 :</h3>
							<br>
							<h4>1. 페이지 로드시 자바스크립트 함수를 실행 및 Servlet에게 데이터를 요청합니다.</h4>
							<br>
							<code>
								setInterval(function drawFunction() { <br>&nbsp; var userID
								= $('#userID').val(); <br>&nbsp; $.ajax({ <br>&nbsp;&nbsp;
								&nbsp;type : 'POST', <br>&nbsp;&nbsp;&nbsp; url :
								'./MachineDrawServlet', <br>&nbsp;&nbsp;&nbsp; data : { <br>&nbsp;&nbsp;&nbsp;
								&nbsp; userID : userID &nbsp;<br> },
							</code>
							<br>
							<h4>2. Servlet을 통하여 Java코드에서 DB접속한 후 수치데이터 값들을 배열에 담아
								return합니다</h4>
							<br> <br>
							<h4>3. 배열의 값을들 , 로 연결해 String으로 ajax함수에 result값으로 return
								합니다.</h4>



							<code>
								success : function(result) { <br>&nbsp;&nbsp;var array =
								result.split(','); <br>&nbsp;&nbsp;light = array[0]; <br>&nbsp;&nbsp;humid
								= array[1]; <br>&nbsp;&nbsp;temp = array[2];


							</code>

							<h4>4. 해당 값들을 그래프의 인자로 넣으며 이 동작을 1.5초마다 갱신합니다.</h4>
						</div>


					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-6 -->
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">알림 패널</div>
					<!-- /.panel-heading -->
					<div class="panel-body row">


						<div class="col-md-6" style="height: 750px; width: 350px;">
							<img alt="That Image" style="max-height: 100%; max-width: 100%;"
								src="image/C.jpeg">


						</div>

						<div class="col-md-6">
							<p class="text-muted">
							<h3>기능 설명 :</h3>
							<br>

							<h4>1. 위의 3번에 이어서 그래프배열 값 그리고 try catch로 얻어지는 return 값을 활용해
								기기상태를 추가로 배열로받습니다 .</h4>



							<code>
								data1 = array[4]; <br>data2 = array[5]; <br>data3 =
								array[6] 


							</code>

							<h4>2. 해당 값들을 문장으로 치환해 표시하며 이 동작을 1.5초마다 갱신합니다.</h4>

							<code>
								if(status == 1){ <br>&nbsp; $('#statusA').html('정상'); <br>&nbsp;
								$('#statusA').css("color", "green"); <br>} <br>if(status
								== -1){ <br>&nbsp; $('#statusA').html('에러'); <br>&nbsp;
								$('#statusA').css("color", "red"); <br> } <br>if(temp
								> 36){ <br>&nbsp; $('#tempM').html('더움'); <br>&nbsp;
								$('#tempM').css("color", "red"); <br> } <br> <br>
								if(temp <= 30 && temp > 20){ <br>&nbsp;
								$('#tempM').html('따뜻'); <br>&nbsp; $('#tempM').css("color",
								"pink"); <br> } <br> <br> if(temp <= 20 && temp >
								10){ <br>&nbsp; $('#tempM').html('적당'); <br>&nbsp;
								$('#tempM').css("color", "green"); <br> } <br> <br>
								if( temp <= 10){ <br>&nbsp; $('#tempM').html('서늘'); <br>&nbsp;
								$('#tempM').css("color", "blue"); <br> }
							</code>
						</div>


					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-6 -->

			<!-- /.col-lg-6 -->

			<!-- /.col-lg-6 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->


	<!-- /.row -->

</body>
</html>