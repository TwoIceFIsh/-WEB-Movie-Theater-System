<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>

<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>회원 정보 변경 확인</title>

</head>
<body>

	<jsp:include page="nav.jsp" />
	<!-- [session] check logic -->
	<%
		String MEMBER_ID = null;
			if (session.getAttribute("MEMBER_ID") != null) {
		MEMBER_ID = (String) session.getAttribute("MEMBER_ID");
			 
		
		if (MEMBER_ID == null) {
			response.sendRedirect("./a_index.jsp");
		}
		UserDTO user = new UserDAO().getMEMBER_INFO(MEMBER_ID);

			}
	%>






	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">회원 정보 확인</h3>
					</div>
					<div class="panel-body">
						<form role="form">
							<fieldset>
								<div class="form-group">
									<input type="text" class="form-control" readonly id="MEMBER_ID"
										value="<%=MEMBER_ID%>">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" id="MEMBER_PW"
										autofocus>
								</div>


								<div>
									<code>회원님의 개인정보보호를 위하여 한번더 비밀번호를 입력해주세요.</code>
									<button type="button" onclick="lCheckFunction();"
										class="form-control btn btn-primary">로그인</button>
									<h5 style="" id="statusMessage"></h5>
								</div>
							
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>