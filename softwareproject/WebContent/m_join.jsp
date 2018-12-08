<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>


</head>
<body>
	<jsp:include page="nav.jsp" />


	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">회원가입 하기</h3>
				</div>
				<div class="panel-body">
					 
						<fieldset>
							<div>
								<h5>아이디</h5>
								<input class="form-control" type="text" id="MEMBER_ID"
									maxLength="20" placeholder="아이디를 입력하세요.">
								<button class="btn btn-primary"
									onclick="registerCheckFunction();" type="button">중복체크</button>
							</div>
							<div>
								<h5>이름</h5>
								<input class="form-control" type="text" id="MEMBER_NAME"
									maxLength="20" placeholder="이름을 입력하세요.">
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
									type="password" id="MEMBER_PW_2" maxLength="20"
									placeholder="비밀번호를 입력하세요.">
							</div>


							<div>
								<h5>이메일</h5>
								<input class="form-control" type="text" id="MEMBER_ADDRESS"
									maxLength="20" placeholder="주소를 입력하세요.">
							</div>
							<h5 style="" id="statusMessage"></h5>

							<input class="btn btn-primary pull-right" type="submit"
								value="회원가입" onClick="joinFunction()">

						</fieldset>
					 
				</div>
			</div>
		</div>
	</div>





</body>
</html>