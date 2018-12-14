<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">


<title>오유이동 영화관</title>

</head>

<body>
	<div>
		<jsp:include page="js.jsp" />
	</div>

	<%
		String MEMBER_ID = null;

		if (session.getAttribute("MEMBER_ID") != null) {
			MEMBER_ID = (String) session.getAttribute("MEMBER_ID");
			response.sendRedirect("./m_index.jsp");

			if (MEMBER_ID == null) {
				response.sendRedirect("./m_index.jsp");
			}
			UserDTO MEMBER = new UserDAO().getMEMBER_INFO(MEMBER_ID);

		}
	%>

	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-inverse navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">---</span> <span class="icon-bar"></span> <span
								class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="./m_index.jsp">오유이동 영화관</a>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">

							<li class="active"><a href="m_index.jsp">홈</a></li>
							<li><a href="p_movieList.jsp">영화목록</a></li>
							<li><a href="setMovie.jsp">영화등록</a></li>
							<li><a href="movieA.jsp">영화sample</a></li>
							<li><a href="showmethemoney777.jsp">동인이 페이지</a></li>
							<li class="dropdown">
								<%
									if (MEMBER_ID == null) {
								%> <a href="#" class="dropdown-toggle  " data-toggle="dropdown"
								role="button" aria-expanded="false">Sign In/Sign Up <span
									class="caret"></span>
							</a> <%
 	} else {
 %> <a href="#" class="dropdown-toggle" data-toggle="dropdown"
								role="button" aria-expanded="false"><%=MEMBER_ID%>님 정보관리 <span
									class="caret"></span> </a> <%
 	}
 %> <%
 	if (MEMBER_ID == null) {
 %>
								<ul class="dropdown-menu" role="menu">
									<li><a href="m_login.jsp">로그인</a></li>
									<li class="divider"></li>
									<li><a href="m_join.jsp">회원가입</a></li>
								</ul> <%
 	} else {
 %>
								<ul class="dropdown-menu" role="menu">
									<li><a href="m_check.jsp">회원정보 수정</a></li>
									<li class="divider"></li>
									<li><a href="F_logout.jsp">로그아웃</a></li>


								</ul> <%
 	}
 %>
							</li>
							<%
								if (MEMBER_ID != null) {
																			UserDTO MEMBER = new UserDAO().getMEMBER_INFO(MEMBER_ID);
																			int MEMBER_POINT = MEMBER.getMEMBER_POINT();
							%>
							<li><a>포인트 <%=MEMBER.getMEMBER_POINT()%>점
							</a></li>

							<%
								}
							%>

						</ul>
					</div>
				</div>
			</nav>

		</div>
	</div>






</body>

</html>