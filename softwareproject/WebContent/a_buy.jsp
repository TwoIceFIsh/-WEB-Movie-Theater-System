<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<%@ page import="movie.MovieDTO"%>
<%@ page import="movie.MovieDAO"%>
<!DOCTYPE html>
<html>
<head>

<script>
	
</script>


<meta charset="EUC-KR">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>영화 예매</title>
<style type="text/css">
h1 {
	font: bold;
	font-size: large;
	color: black;
}

p.select_theater_room {
	font: normal;
	font-size: medium;
	color: black;
}

p.select_theater_Movie {
	font: normal;
	font-size: medium;
	color: black;
}

p.select_theater_Time {
	font: normal;
	font-size: medium;
	color: black;
	'
}
</style>
</head>
<body>
	<jsp:include page="nav.jsp" />

	<%
		String MEMBER_ID = null;
		String MOVIE_NAME = null;
		String SCREEN_NUMBER = null;
		String SCREEN_DATE = null;
		if (session.getAttribute("MEMBER_ID") == null) {
			response.sendRedirect("./a_index.jsp");
		}
		if (session.getAttribute("MEMBER_ID") != null) {
			MEMBER_ID = (String) session.getAttribute("MEMBER_ID");
			MOVIE_NAME = (String) session.getAttribute("MOVIE_NAME");

			MovieDTO MOVIE = new MovieDAO().getMOVIE_INFO(MOVIE_NAME);
			SCREEN_DATE = (String) session.getAttribute("SCREEN_DATE");
			SCREEN_NUMBER = (String) session.getAttribute("SCREEN_NUMBER");
			UserDTO MEMBER = new UserDAO().getMEMBER_INFO(MEMBER_ID);
	%>

	<div class="carousel-inner" role="listbox">

		<h1 align="center">카드 결제 패이지</h1>

	</div>
	<form class="container " name="Movie_choice_form" action="toTicket"
		accept-charset="utf-8" method="post">

		 


		<div class="form-group">
			<input class="form-control" readonly id="MEMBER_ID" name="MEMBER_ID"
				value="<%=MEMBER.getMEMBER_ID()%>" autofocus>
		</div>

		<div class="container">
			<h4>
				포인트 잔액은 :
				<%=MEMBER.getMEMBER_POINT()%>
				point 입니다
			</h4>
		</div>
		<br>
<input class="form-control hidden" readonly id="point" name="point"
				value="<%=MEMBER.getMEMBER_POINT()%>" autofocus>


		<div>
			<h4>당신이 예매한 영화의 이름은:</h4>
			<div class="form-group">
				<input class="form-control" readonly id="MOVIE_NAME"
					name="MOVIE_NAME" value="<%=MOVIE.getMOVIE_NAME()%>" autofocus>
			</div>


			<h4>상영관 :</h4>

			<div class="form-group">
				<input class="form-control" readonly id="SCREEN_NUMBER"
					name="SCREEN_NUMBER" value="<%=SCREEN_NUMBER%>" autofocus>
			</div>


			<h4>상영 시간 :</h4>
			<div class="form-group">
				<input class="form-control" readonly id="SCREEN_DATE"
					name="SCREEN_DATE" value="<%=SCREEN_DATE%>" autofocus>
			</div>

			좌석번호 :
			<div class="form-group">
				<input class="form-control" readonly id="SEAT_NUMBER"
					name="SEAT_NUMBER" value="<%=request.getParameter("SEAT")%>"
					autofocus>
			</div>
			
			<input type="text" id="moviecost" class=" hidden "
				placeholder="숫자만입력" value="<%=MOVIE.getMOVIE_COST()%>"> <span><label>사용할
					포인트를 입력하세요</label></span><input type="text" id="pointvalue"
				onkeyup="partpointCheckFunction();" class="form-control "
				placeholder="숫자만입력">

 <%request.getSession().setAttribute("MOVIE_IMG_URL", MOVIE.getMOVIE_IMG_URL());  %>
			<h4>결제금액은</h4>
			<a id="statusMessage1"></a> <a id="statusMessage2"></a> 
			<br>
			<button class="btn btn-danger btn-lg btn-block"
				type="submit" >결제 확인</button>
		</div>

	</form>

	<%
		}
	%>

</body>
</html>