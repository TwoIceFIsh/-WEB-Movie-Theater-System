<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

				<h1 class="page-header">영화예매</h1>
			</div>

		</div>

		<form name="Movie_choice_form" action="result.jsp"
			accept-charset="utf-8" method="post">
			<p class="select_theater_room">영화관 선택</p>
			<select name="Movie_room" method="post" accept-charset="utf-8">
				<option value="제 1영화관" selected>1영화관</option>
				<option value="제 2영화관" select>2영화관</option>
				<option value="제 3영화관" select>3영화관</option>
				<option value="제 4영화관" select>4영화관</option>
				<option value="제 5영화관" select>5영화관</option>
			</select>

			<p class="select_theater_Movie">영화관 선택</p>
			<select name="Movie_name" method="post">
				<option value="영화1" selected>영화1</option>
				<option value="영화2" select>영화2</option>
				<option value="영화3" select>영화3</option>
				<option value="영화4" select>영화4</option>
				<option value="영화5" select>영화5</option>
			</select>

			<p class="select_theater_Date">영화관 날짜선택</p>

			<fieldset style="width: 350">
				<legend>
					영화관 날짜
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

	</div>
</body>
</html>