function loginFunction() {

	var MEMBER_ID = $('#MEMBER_ID').val();
	var MEMBER_PW = $('#MEMBER_PW').val();
	alert( MEMBER_ID);
	$.ajax({
		type : 'POST',
		url : './UserLoginServlet',
		data : {
			MEMBER_ID : MEMBER_ID,
			MEMBER_PW : MEMBER_PW
		},
		success : function(result) {


			if(result == 1 ){
				$(location).attr('href', './m_index.jsp');

			}
			if (result == 7) {
				$('#statusMessage').html('아이디 및 비밀번호를 입력해주세요.');
				$('#statusMessage').css("color", "red");

			}
			if (result == 2) {
				$('#statusMessage').html('아이디 혹은 비밀번호가 다릅니다.');
				$('#statusMessage').css("color", "red");
			}

			if (result == -1 || result == 0) {
				$('#statusMessage').html('아이디 혹은 비밀번호를 확인해주세요.');
				$('#statusMessage').css("color", "red");
			}
		}
	});

}



//[Y]
function passwordCheckFunction() {
	var MEMBER_PW_1 = $('#MEMBER_PW_1').val();
	var MEMBER_PW_2 = $('#MEMBER_PW_2').val();

	if (MEMBER_PW_1 != MEMBER_PW_2 && MEMBER_PW_2 != "") {
		$('#statusMessage').html('비밀번호가 달라요');
		$('#statusMessage').css("color", "red");
	} else {
		$('#statusMessage').html('');
	}
}



//[Y]
function registerCheckFunction() {

	var MEMBER_ID = $('#MEMBER_ID').val();

	$.ajax({
		type : 'POST',
		url : './UserRegisterCheckServlet',
		data : {
			MEMBER_ID : MEMBER_ID
		},
		success : function(result) {

			if (result == 1) {
				$('#statusMessage').html('아이디 사용 가능');
				$('#statusMessage').css("color", "green");

			} else {
				$('#statusMessage').html('아이디 사용 불가');
				$('#statusMessage').css("color", "red");
			}

		}
	});

}



//[Y]
function lCheckFunction() {

	var MEMBER_ID = $('#MEMBER_ID').val();
	var MEMBER_PW = $('#MEMBER_PW').val();

	$.ajax({
		type : 'POST',
		url : './UserLoginServlet',
		data : {
			MEMBER_ID : MEMBER_ID,
			MEMBER_PW : MEMBER_PW
		},
		success : function(result) {


			if(result == 1 ){
				$(location).attr('href', './m_update.jsp');

			}
			if (result == 7) {
				$('#statusMessage').html('아이디 및 비밀번호를 입력해주세요.');
				$('#statusMessage').css("color", "red");

			}
			if (result == 2) {
				$('#statusMessage').html('아이디 혹은 비밀번호가 다릅니다.');
				$('#statusMessage').css("color", "red");
			}

			if (result == -1 || result == 0) {
				$('#statusMessage').html('아이디 혹은 비밀번호를 확인해주세요.');
				$('#statusMessage').css("color", "red");
			}
		}
	});

}


function joinFunction() {

	var MEMBER_ID = $('#MEMBER_ID').val();
	var MEMBER_PW_1 = $('#MEMBER_PW_1').val();
	var MEMBER_PW_2 = $('#MEMBER_PW_2').val();
	var MEMBER_NAME = $('#MEMBER_NAME').val();
	var MEMBER_ADDRESS = $('#MEMBER_ADDRESS').val();


	alert(MEMBER_ID);
	$.ajax({
		type : 'POST',
		url : './UserJoinServlet',
		data : {
			MEMBER_ID : MEMBER_ID,
			MEMBER_PW_1 : MEMBER_PW_1,
			MEMBER_PW_2 : MEMBER_PW_2,
			MEMBER_NAME:MEMBER_NAME,
			MEMBER_ADDRESS:MEMBER_ADDRESS
		},
		success : function(result) {
		 
			if(result ==1 ){
				$(location).attr('href', './m_index.jsp');

			}

			if (result == -1) {
				$('#statusMessage').html('모든정보를 입력하세요.');
				$('#statusMessage').css("color", "red");
			}
		}
	});

}
function MileageFunction() {

	var MEMBER_ID = $('#MEMBER_ID').val();

	$.ajax({
		type : 'POST',
		url : './UserLoginServlet',
		data : {
			MEMBER_ID : MEMBER_ID
		},
		success : function(result) {


			if(result == 1 ){
				$(location).attr('href', './m_update.jsp');

			}
			if (result == 7) {
				$('#statusMessage').html('아이디 및 비밀번호를 입력해주세요.');
				$('#statusMessage').css("color", "red");

			}
			if (result == 2) {
				$('#statusMessage').html('아이디 혹은 비밀번호가 다릅니다.');
				$('#statusMessage').css("color", "red");
			}

			if (result == -1 || result == 0) {
				$('#statusMessage').html('아이디 혹은 비밀번호를 확인해주세요.');
				$('#statusMessage').css("color", "red");
			}
		}
	});

}
