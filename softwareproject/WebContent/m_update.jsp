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
<title>회원 정보 수정</title>


</head>
<body>
	<jsp:include page="nav.jsp" />

	<!-- [session] check logic -->
	<%
		String MEMBER_ID = null;
		if (session.getAttribute("MEMBER_ID") != null) {
			MEMBER_ID = (String) session.getAttribute("MEMBER_ID");
	 

			if (MEMBER_ID == null) {
				response.sendRedirect("./m_index.jsp");
			}

			UserDTO MEMBER = new UserDAO().getMEMBER_INFO(MEMBER_ID);
 
	%>




	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">회원 정보 확인</h3>
					</div>
					<div class="panel-body">
						<form method="post" action="./UserUpdateServlet">
							<fieldset>
								<div>
									<h5>아이디</h5>
									<%=MEMBER.getMEMBER_ID()%>
									<input type="hidden" value="<%=MEMBER.getMEMBER_ID()%>">
								</div>

								<div>
									<h5>이름</h5>
									<input class="form-control" type="text" id="MEMBER_NAME"
										maxLength="20" placeholder="<%=MEMBER.getMEMBER_NAME()%>">
								</div>


								<div>
									<h5>비밀번호</h5>
									<input onkeyup="passwordCheckFunction();" class="form-control"
										type="password" id="MEMBER_PW_1" maxLength="20"
										placeholder="비밀번호를 입력하세요.">
								</div>
								<div>
									<h5>비밀번호 확인</h5>
									<input onkeyup="passwordCheckFunction();" class="form-control"
										type="password" id="MEMBER_PW_2" " maxLength="20"
										placeholder="비밀번호를 입력하세요.">
								</div>


								<div>
									<h5>주소</h5>
									<input class="form-control" type="text" id="MEMBER_ADDRESS"
										maxLength="20" placeholder="<%=MEMBER.getMEMBER_ADDRESS()%>">
								</div>


								<div>
									<h5>보유 포인트</h5>
									<input class="form-control" type="hidden" id="MEMBER_POINT"
										maxLength="20" placeholder="<%=MEMBER.getMEMBER_POINT()%>">
								</div>


								<h5 style="" id="statusMessage"></h5>
								<input class="btn btn-primary pull-right" type="submit"
									value="수정완료">
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<% 
		}
	%>



</body>
</html>