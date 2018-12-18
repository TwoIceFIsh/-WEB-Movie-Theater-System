<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="movie.MovieDTO"%>
<%@ page import="movie.MovieDAO"%>
<%@ page import="screen.ScreenDTO"%>
<%@ page import="screen.ScreenDAO"%>
<!DOCTYPE html  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 무조건 이양식을 따라야 한글이 제대로 출력이됩니다.
 -->
<title>기본 구성 페이지!</title>
</head>
<body>


	<!-- 네비게이션 바를 로딩합니다 -->
	<jsp:include page="nav.jsp" />



	<div id="page-wrapper">
		<div class="row">

			<div class="col-lg-12">

				<h1 class="page-header">좌석선택하기</h1>
			</div>

		</div>

		<%
			ScreenDTO SCREEN = new ScreenDTO();

			String SCREEN_DATE = null;
			String SCREEN_NUMBER = null;
			String SEAT_BITMAP[] = null;
			int BIT_MAP_LENGTH = 0;

			if (session.getAttribute("SCREEN_NUMBER") != null) {

				SCREEN_DATE = (String) session.getAttribute("SCREEN_DATE");
				SCREEN_NUMBER = (String) session.getAttribute("SCREEN_NUMBER");
				SCREEN = new ScreenDAO().getMOVIE_SCREEN_INFO(SCREEN_DATE, SCREEN_NUMBER);
				SEAT_BITMAP = new ScreenDAO().getSEAT_LIST(SCREEN_DATE, SCREEN_NUMBER);
			}
		%>

		<div class="row">
			<div class="col-lg-12">

				영화 :
				<%=SCREEN.getMOVIE_NAME()%>
				<br> 상영관 :
				<%=SCREEN.getSCREEN_NUMBER()%>
				
				
				<br> 상영일자 :
				<%=SCREEN.getSCREEN_DATE()%>
				<br> ㅡㅡㅡㅡㅡㅡㅡ 스크린 ㅡㅡㅡㅡㅡㅡㅡ<br>


				<div class="row ">
					<%
						for (int i = 0; i < SEAT_BITMAP.length; i++) {
					%>

					<%
						if (SEAT_BITMAP[i].equals("0")) {
					%>
					<input class="btn btn-lg btn-default" type="submit" id="btn<%=i%>"
						name="btn<%=SEAT_BITMAP[i]%>" value="<%=i%>"
						onclick="clickSeat(<%=i%>)" />
					<%
						}
					%>
					<%
						if (SEAT_BITMAP[i].equals("1")) {
					%>
					<input class="btn btn-lg btn-danger" type="submit" id="btn<%=i%>"
						name="btn<%=SEAT_BITMAP[i]%>" value="X" />
					<%
						}
					%>


					<%
						if ((i % 10) == 0 && (i > 1)) {
					%>
					<br>
					<%
						}
					%>

					<%
						}
					%>
				</div>

				<form method="post" class="form-signin" role="form"
					action="showmethemoney777.jsp">

					<span><label>좌석번호를 입력하세요</label></span>
					<div class="form-group">
						<input class="form-control" placeholder="SEAT" id="SEAT" name="SEAT"  value=" " autofocus>
					</div>
					<div class="col-md-6">
						<span><label></label></span> <br>
						<button type="submit" class="btn btn-danger">좌석선택하기</button>
					</div>
				</form>
			</div>

		</div>

	</div>
</body>
</html>