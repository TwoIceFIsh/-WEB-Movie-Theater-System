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

	<%
			UserDTO MEMBER = new UserDAO().getMEMBER_INFO("asdf");
			MovieDTO MOVIE = new MovieDAO().getMOVIE_INFO("dongin");
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
		<p>
			����
			<%=MEMBER.getMEMBER_NAME()%>���� ����Ʈ �ܾ���
			<%=MEMBER.getMEMBER_POINT()%> point
			�Դϴ�
		</p>

		<p>
			<select id="select_point" name="Movie_name" method="post"
				onchange="PointCheckFunction()">
				<option value="����" selected>----------����----------</option>
				<option value="����" select>����Ʈ ���� ���</option>
				<option value="�Ϻ�" select>����Ʈ �Ϻ� ���</option>
				<option value="�̻��" select>����Ʈ �̻��</option>
			</select>
		<p>
		<fieldset style="width: 350">
			<legend>
				����� ������ ��ȭ�� �̸���:
				<%=MOVIE.getMOVIE_NAME()%>

				<br> ����� ������ ��ȭ�� ������:
				<%=MOVIE.getMOVIE_INFO()%>
				�����ݾ��� <%=Integer.parseInt(MOVIE.getMOVIE_COST()) - MEMBER.getMEMBER_POINT()%>
				���Դϴ�
				<date>
			</legend>
			
 
			<p class="check_normal">�̷��� ���� �Ͻðڽ��ϱ�?</p>
			<input type="submit" value="������"> <input type="reset"
				value="�������� ������">
		</fieldset>
	
	</form>

</body>
</html>