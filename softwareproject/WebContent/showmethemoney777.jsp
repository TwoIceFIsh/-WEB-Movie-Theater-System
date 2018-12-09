<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
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

	<% //영화 예매 사이트
	//영화 예매 페이지

	 //<1> 영화관 선택, 영화 선택, 날짜 선택
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
		<p>
		<p class="select_theater_Movie">포인트 결제</p>
		<a> 현재 당신의 포인트 잔액은 <%=MEMBER.getMEMBER_POINT() %> 입니다</a>
		<p class="select_theater_Date">마일리지 포인트 잔액 : %d point</p>
		<p>
		<select name="Movie_name" method="post">
			<option value="선택" selected>----------선택----------</option>
			<option value="전액" select>포인트 전액 사용</option>
			<option value="일부" select>포인트 일부 사용</option>
			<option value="미사용" select>포인트 미사용</option>
		</select>
		<p>
		<fieldset style="width: 350">
			<legend>
				결제금액 : %d 원
				<date>
			</legend>
			<br> 날짜입력 <br> <input type="date" min="2018-12-20"
				max="2019-01-30" name="date" step="7"> <br>

			<p class="select_theater_Time">영화 시간 선택</p>
			<select name="Movie_Time" action="" method="post">
				<option value="Am_06:00" selected>06:00</option>
				<option value="Am_08:00" select>08:00</option>
				<option value="Am_11:00" select>11:00</option>
				<option value="Pm_13:00" select>13:00</option>
				<option value="Pm_15:00" select>15:00</option>
				<option value="Pm_17:00" select>17:00</option>
				<option value="Pm_19:00" select>19:00</option>
				<option value="Pm_21:00" select>21:00</option>
			</select> <br>

			<p class="check_normal">이렇게 하시겠습니까?</p>
			<input type="submit" value="보내기"> <input type="reset"
				value="원점으로 돌리기">
		</fieldset>
	</form>


</body>
</html>