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

	<jsp:include page="testNavbar.jsp" />
	<!-- [session] check logic -->
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
	
		}

		if (userID == null) {

			response.sendRedirect("./m_index.jsp");
		}

		UserDTO user = new UserDAO().getUser(userID);
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
									<input type="text" class="form-control" readonly id="userID"
										name="userID1" value="<%=userID%>">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" id="userPW"
										name="userPW1" autofocus>
								</div>


								<div>
									<code>회원님의 개인정보보호를 위하여 한번더 비밀번호를 입력해주세요.</code>
									<button type="button" onclick="lCheckFunction();"
										class="form-control btn btn-primary">로그인</button>
									<h5 style="" id="statusMessage"></h5>
								</div>
								<!-- Change this to a button or input when using this as a form -->

							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>