<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>��ȭ ����</title>
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

	<% //��ȭ ���� ����Ʈ
	//��ȭ ���� ������

	 //<1> ��ȭ�� ����, ��ȭ ����, ��¥ ����
	%>

	<h1 align="center">��ݰ���</h1>
	<form name="Movie_choice_form" action="result.jsp"
		accept-charset="utf-8" method="post">
		<p class="select_theater_room">���� ��� ����</p>
		<select name="Movie_room" method="post" accept-charset="utf-8">
			<option value="����" selected>----------����----------</option>
			<option value="ī�� ����" select>ī�� ����</option>
			<option value="���� ����" select>���� ����</option>
			<option value="����Ʈ ����" select>����Ʈ ����</option>
			<option value="���� + ����Ʈ ����" select>���� + ����Ʈ ����</option>
			<option value="ī�� + ����Ʈ ����" select>ī�� + ����Ʈ ����</option>
		</select>
		<p>
		<p class="select_theater_Movie">����Ʈ ����</p>
		<a> ���� ����� ����Ʈ �ܾ��� <%=MEMBER.getMEMBER_POINT() %> �Դϴ�</a>
		<p class="select_theater_Date">���ϸ��� ����Ʈ �ܾ� : %d point</p>
		<p>
		<select name="Movie_name" method="post">
			<option value="����" selected>----------����----------</option>
			<option value="����" select>����Ʈ ���� ���</option>
			<option value="�Ϻ�" select>����Ʈ �Ϻ� ���</option>
			<option value="�̻��" select>����Ʈ �̻��</option>
		</select>
		<p>
		<fieldset style="width: 350">
			<legend>
				�����ݾ� : %d ��
				<date>
			</legend>
			<br> ��¥�Է� <br> <input type="date" min="2018-12-20"
				max="2019-01-30" name="date" step="7"> <br>

			<p class="select_theater_Time">��ȭ �ð� ����</p>
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

			<p class="check_normal">�̷��� �Ͻðڽ��ϱ�?</p>
			<input type="submit" value="������"> <input type="reset"
				value="�������� ������">
		</fieldset>
	</form>


</body>
</html>