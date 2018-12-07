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

		<div class="row">
			<div class="col-lg-12">
				<p class="select_theater_Movie">영화</p>
				<button type="button" class="btn btn-default btn-lg">나는 최고다</button>
				<button type="button" class="btn btn-default btn-lg">내이름은
					돼지</button>
				<button type="button" class="btn btn-default btn-lg">멋진 나의
					이름은</button>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<p>나는 최고다</p>
				<button type="button" class="btn btn-default btn-lg">
					1관 <a class="list-group-item"></a> 09:30 <a class="list-group-item"></a>남은좌석
					: 80
				</button>
				<button type="button" class="btn btn-default btn-lg">
					1관 <a class="list-group-item"></a> 09:30 <a class="list-group-item"></a>남은좌석
					: 80
				</button>
				<button type="button" class="btn btn-default btn-lg">
					1관 <a class="list-group-item"></a> 09:30 <a class="list-group-item"></a>남은좌석
					: 80
				</button>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<p class="select_theater_room">2관</p>
				<button type="button" class="btn btn-default btn-lg">나는 최고다
					09:30</button>
				<button type="button" class="btn btn-default btn-lg">나는 최고다
					11:30</button>
				<button type="button" class="btn btn-default btn-lg">나는 최고다
					13:30</button>

			</div>
		</div>


		<p class="select_theater_Date">영화관 날짜선택</p>
		<button type="button" class="btn btn-default">Default</button>


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


	</div>
</body>
</html>