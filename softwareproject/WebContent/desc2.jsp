<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>졸업프로젝트 설명</title>
</head>
<body>
	<jsp:include page="testNavbar.jsp" />


	<div id="page-wrapper">
		<div class="row">

			<div class="col-lg-12">

				<h1 class="page-header">Q&A</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
   

		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">WEB 질문</div>
					<!-- /.panel-heading -->
					<div class=" col-md-12">
						 
						 	
						 
						 
							<h5>Q. 개발 및 서버 환경에 대 알려주십시오.
							</h5> <br>
							A. DB는 AWS(Amazon Web Service)에서 임대를하여 서버를돌리고있습니다. 테이블은 총 3개이며 회원정보, 기기정보, 등록할수있는 기기코드목록 이렇게 3가지입니다.
							<br>Web Server는 AWS에서 컴퓨터를 임대했으며 OS는 Windows Server 2012 웹서버는 Apache Tomcat8.5 입니다. 포트는 8080입니다. 
							<br>개발 IDE(통합개발환경)은 Eclipse이며 사용 언어는 Jsp/Servlet을 사용했으며 MVC2 패턴으로 코딩하였습니다 CSS는 부트스트랩을 사용했습니다.
							
							<br><br>
							
							<h5>Q. 핸드폰 어플리케이션도 있는데 웹을 왜 선택했습니까?
							</h5> <br>
							A. 핸드폰운영 체제는 크게 2가지로 나뉩니다. 그에맞게 언어로 재작성해주어야 하여 어떤 단말기든 인터넷웹 브라우저를 지원한다면 누구든지 사이트에접속해 관리할수 있게만드는것을 목표로 잡았기떄문입니다.
							<br><br>
							
							<h5>Q. 어떻게 페이지 새로고침없이 데이터를 갱신할수있습니까?
							</h5> <br>
							A. 이는 비동기 통신이라고도 불리며 JS(JavaScript; 자바스크립트)언어에서 ajax라는 함수를 사용하면 구현이 가능합니다. 이를 이용해서 웹페이지 호출을 Servlet에 전달을하고 result값을 받아 페이지내 html내용을 부분 갱신하는 용도로 사용했습니다.
							<br><br>
							
							<h5>Q. 만드는데 얼마나 걸렸습니까?
							</h5> <br>
							A. 저 같은경우에는 웹관련 지식이 하나도 없었기 때문에 유투브로 기초부터 찾아보며하니 총 130시간 이상이 걸리게 되었습니다.
							<br><br>				
							
							<h5>Q. 프로젝트를 진행하면서 곤란했던 점은 무엇입니까?
							</h5> <br>
							A. Native 환경에서 잘 작동하더라도 실제 환경으로 이전후 데이터 송수신이 안되는점이었습니다.
							<br><br>
							
							
						
							<h5>Q. 왜 웹서버를 왜 Windows Server에 했나요? Ubuntu Linux도 있지않습니까.
							</h5> <br>
							A. 처음에 Ubuntu Linux 환경에 WAR파일로 웹페이지 배포를 시도하였습니다. 해당 OS에서 DB로 연결하는 포트를 열었지만 동작을안해 Native 환경과 동일하게 구성할수밖에없었습니다.
							<br><br>
							
							<h5>Q. smartgreenhouse.cf로 접속을하는데 주소가 왜 리다이랙트 되나요?
							</h5> <br>
							A. 처음에 도메인포워딩을 시도했으나 현재 CSS인 부트스트랩의 반응형웹(단말기의 크기에따라 자동맞춤)이 동작을 안했습니다. 그 이유는 도메인포워딩으로 할 경우 페이지 요청자가 도메인 서버가 되므로 화면이 작은 단말기로 접속을 시도해도 웹이 그에맞게 크기가 조절이 되지않아 리다이렉트 되게했습니다.
							<br><br>
						
						기타 궁금하신 사항이있으면 연락주시기 바랍니다 <br>
						이병호 010-5461-1785
	
							
							
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>

			<!-- /.col-lg-6 -->
		</div>
		<!-- /.row -->
	</div>
</body>
</html>