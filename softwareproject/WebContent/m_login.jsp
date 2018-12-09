<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>

</head>
<body>
	<div>
		<jsp:include page="nav.jsp" />
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">로그인</h3>
					</div>
					<div class="panel-body">
						<form role="form">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="ID" id="MEMBER_ID"
										type="email" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										id="MEMBER_PW" type="password" value="">
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox"
										value="Remember Me">아이디 기억하기
									</label>
								</div>
								<div>
									<button type="button" onclick="loginFunction();"
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