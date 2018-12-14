function loginFunction() {

	var MEMBER_ID = $('#ace').val();
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

function PointCheckFunction() {
	
	var MEMBER_ID = $('#MEMBER_ID').val();
	var MOVIE_NAME = $('#MOVIENAME').val();
	var langSelect = document.getElementById("select_point");

	// select element에서 선택된 option의 value가 저장된다.
	var selectValue = langSelect.options[langSelect.selectedIndex].value;



	$.ajax({
		type : 'POST',
		url : './MoviePonitCheckServlet',
		data : {
			MEMBER_ID : MEMBER_ID,
			MOVIE_NAME : MOVIE_NAME
		},
		success : function(result) {
			var selectValue = langSelect.options[langSelect.selectedIndex].value;
			var array;
			array = string.split( ',', result );
			var moviecost = array[0];
			var point =array[1];
			if(langSelect=='포인트 전액 사용'||langSelect=='포인트 일부 사용'){
				if (moviecost - point <= 0) {
					$('#statusMessage1').html(moviecost +'포인트로 전액결제가능');
					$('#statusMessage1').css("color", "green");
					$('#statusMessage2').html('남은포인트는 : ' + point-moviecost);
					$('#statusMessage2').css("color", "green");


				} else {
					$('#statusMessage1').html(moviecost - point +'포인트를 제외한 가격입니다');
					$('#statusMessage1').css("color", "red");
				}
			}if(langSelect=='포인트 미사용'){
				$('#statusMessage1').html(moviecost + '원으로 모두 결제하겠습니다.');
				$('#statusMessage1').css("color", "green");
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
