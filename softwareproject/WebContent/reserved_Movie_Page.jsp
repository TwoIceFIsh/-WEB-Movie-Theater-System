<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>��ȭ ���� </title>
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
	
	<% //��ȭ ���� ����Ʈ
	//��ȭ ���� ������

	 //<1> ��ȭ�� ����, ��ȭ ����, ��¥ ����
	%>
	
	<h1 align="center"> ��ȭ���� </h1>
	<form name ="Movie_choice_form" action="http://localhost:8080/softwareproject/reserved_Movie_Page/temp.jsp" method="post">
	<p class="select_theater_room">��ȭ�� ����</p>
		<select name="Movie_room" method="post">
			<option value = "�� 1��ȭ��" selected>1��ȭ��</option>
			<option vlaue = "�� 2��ȭ��" select>2��ȭ��</option>
			<option vlaue = "�� 3��ȭ��" select>3��ȭ��</option>
			<option vlaue = "�� 4��ȭ��" select>4��ȭ��</option>
			<option vlaue = "�� 5��ȭ��" select>5��ȭ��</option>
		</select>
		
		<p class="select_theater_Movie">��ȭ�� ����</p>
		<select name="Movie_name" method="post">
			<option value = "��ȭ1" selected>��ȭ1</option>
			<option vlaue = "��ȭ2" select>��ȭ2</option>
			<option vlaue = "��ȭ3" select>��ȭ3</option>
			<option vlaue = "��ȭ4" select>��ȭ4</option>
			<option vlaue = "��ȭ5" select>��ȭ5</option>
		</select>
		
		<p class="select_theater_Time">��ȭ �ð� ����</p>
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
		
		<p class="check_normal">�̷��� �Ͻðڽ��ϱ�?</p>
		<input type ="submit" value="������">
		<input type ="reset" value="�������� ������">
		
	</form>
	

</body>
</html>