<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UserDAO"%>
<!DOCTYPE html>
<html  >

<head>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
 

<title>SMART GREEN HOUSE</title>

</head>

<body>
	<jsp:include page="testJs.jsp" />


	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
			response.sendRedirect("./m_index.jsp");

			if (userID == null) {
				response.sendRedirect("./m_index.jsp");
			}

			UserDTO user = new UserDAO().getUser(userID);
			

		}
	%>


	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="m_index.jsp">SMART GREEN HOUSE</a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				 
		 
				   <%
					if (userID == null) {
				%>


					 
						<li class="divider"></li>
						<li><a href="./m_login.jsp"><i class="fa fa-user fa-fw"></i> 로그인</a></li>
						<li class="divider"></li>
						<li><a href="./m_join.jsp"><i class="fa fa-gear fa-fw"></i> 회원가입</a></li>
						<li class="divider"></li>
						 
					  <%
					} else {
				%>
				
				
					 
						<li class="divider"></li>
										<li><a href="./m_check.jsp"> <i class="fa fa-user fa-fw"></i> 
							&nbsp;<%=userID%>님 정보수정 </a></li>
						 
						<li class="divider"></li>
						<li><a href="./F_logout.jsp"><i class="fa fa-sign-out fa-fw"></i>
								로그아웃</a></li>
								<li class="divider"></li>
					 

				<%
					}
				%>

				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						 
						  <%
					if (userID != null) {
				%>
						 
						<li><a href="testIndex.jsp"><i class="fa fa-dashboard fa-fw"></i>
								 ☆ 개발자 컨트롤 패널 ☆ </a></li>
								
									  <%
					}  else{
				%>
								
								<li><a href="guest.jsp"><i class="fa fa-dashboard      fa-fw"></i>
								손님용 컨트롤 패널</a></li>
								
									  <%
					}
				%>
									<li><a href="m_serialR.jsp"><i class="fa fa-key   fa-fw"></i>
								시리얼 등록</a></li>
								<!-- 	<li><a href="m_maker.jsp"><i class="fa fa-comment   fa-fw"></i>
								제작자</a></li> -->
								
						 
								
								<li><a href="desc.jsp"><i class="fa fa-gears       fa-fw"></i>
								홈페이지 기술 설명</a></li>
									<li><a href="desc2.jsp"><i class="fa fa-question-circle           fa-fw"></i>
								Q&A</a></li> 
								
								 
									<li><a href="qa.jsp"><i class="fa fa-question-circle           fa-fw"></i>
								마지막 페이지</a></li>
								
								
						
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>


		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->



</body>

</html>

