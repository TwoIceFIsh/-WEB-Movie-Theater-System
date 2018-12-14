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
	<jsp:include page="js.jsp" />

	<%
		String MEMBER_ID = null;
		String MOVIE_NAME = null;
		if (session.getAttribute("MEMBER_ID") == null) {
			response.sendRedirect("./m_index.jsp");
		}
		if (session.getAttribute("MEMBER_ID") != null) {
			MEMBER_ID = (String) session.getAttribute("MEMBER_ID");
			MOVIE_NAME = (String) session.getAttribute("MOVIE_NAME");

			MovieDTO MOVIE = new MovieDAO().getMOVIE_INFO(MOVIE_NAME);

			UserDTO MEMBER = new UserDAO().getMEMBER_INFO(MEMBER_ID);
	%>

	<h1 align="center">요금결제</h1>
	<form name="Movie_choice_form" action="result.jsp"
		accept-charset="utf-8" method="post">
		<p class="select_theater_room">결제 방식 선택</p>
		<select name="Movie_room" method="post" accept-charset="utf-8">
			<option value="선택" selected>----------선택----------</option>
			<option value="카드 결제" select>카드 결제</option>
			<option value="현금 결제" select>현금 결제</option>
			<option value="포인트 결제" select>포인트 결제</option>
			<option value="현금 + 포인트 결제" select>현금 + 포인트 결제</option>
			<option value="카드 + 포인트 결제" select>카드 + 포인트 결제</option>
		</select>

		<p class="select_theater_Movie">포인트 결제</p>
		<p>현재
		<div id="MEMBER_ID">
			<%=MEMBER.getMEMBER_ID()%></div>
		님의 포인트 잔액은
		<%=MEMBER.getMEMBER_POINT()%>
		point 입니다
		</p>

		<p>
			<select id="select_point" name="Movie_name" method="post"
				onchange="PointCheckFunction()">
				<option value="선택" selected>----------선택----------</option>
				<option value="전액" select>포인트 전액 사용</option>
				<option value="일부" select>포인트 일부 사용</option>
				<option value="미사용" select>포인트 미사용</option>
			</select>
		</p>
		<fieldset style="width: 350">
			<legend>
				당신이 예매한 영화의 이름은:
				<div id="MOVIE_NAME"><%=MOVIE.getMOVIE_NAME()%></div>

				결제금액은
				<h5 id="statusMessage1"></h5>
				<h5 id="statusMessage2"></h5>

			</legend>


			<p class="check_normal">이렇게 결제 하시겠습니까?</p>
			<input type="submit" value="보내기"> <input type="reset"
				value="원점으로 돌리기">
		</fieldset>
		<%
			}
		%>
	</form>

</body>
</html>