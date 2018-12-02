<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>영화 예매 </title>
<style type="text/css">
	h1 {
		font:bold;
		font-size: large;
		color: black;	
		}
	p.select_theater_room
	{
		font: normal;
		font-size: medium;
		color: black;
	}
	p.select_theater_Movie
	{
		font: normal;
		font-size: medium;
		color: black;
	}
	p.select_theater_Time
	{
		font: normal;
		font-size:medium;
		color:black;'
	}
</style>
</head>
<body>
	<jsp:include page="js.jsp" />
	
	<% //영화 예매 사이트
	//영화 예매 페이지

	 //<1> 영화관 선택, 영화 선택, 날짜 선택
	%>
	
	<h1 align="center"> 영화예매 </h1>
	<form name ="Movie_choice_form" action="http://localhost:8080/softwareproject/reserved_Movie_Page/temp.jsp" method="post">
	<p class="select_theater_room">영화관 선택</p>
		<select name="Movie_room" method="post">
			<option value = "제 1영화관" selected>1영화관</option>
			<option vlaue = "제 2영화관" select>2영화관</option>
			<option vlaue = "제 3영화관" select>3영화관</option>
			<option vlaue = "제 4영화관" select>4영화관</option>
			<option vlaue = "제 5영화관" select>5영화관</option>
		</select>
		
		<p class="select_theater_Movie">영화관 선택</p>
		<select name="Movie_name" method="post">
			<option value = "영화1" selected>영화1</option>
			<option vlaue = "영화2" select>영화2</option>
			<option vlaue = "영화3" select>영화3</option>
			<option vlaue = "영화4" select>영화4</option>
			<option vlaue = "영화5" select>영화5</option>
		</select>
		
		<p class="select_theater_Time">영화 시간 선택</p>
		<select name="Movie_Time" action="" method="post">
			<option value ="Am_06:00" selected> 06:00 </option>
			<option value ="Am_08:00" select> 08:00 </option>
			<option value ="Am_11:00" select> 11:00 </option>
			<option value ="Pm_13:00" select> 13:00 </option>
			<option value ="Pm_15:00" select> 15:00 </option>
			<option value ="Pm_17:00" select> 17:00 </option>
			<option value ="Pm_19:00" select> 19:00 </option>
			<option value ="Pm_21:00" select> 21:00 </option>
		</select>
		
		<br>
		
		<p class="check_normal">이렇게 하시겠습니까?</p>
		<input type ="submit" value="보내기">
		<input type ="reset" value="원점으로 돌리기">
		
	</form>
	

</body>
</html>