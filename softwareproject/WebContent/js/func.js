function loginFunction() {

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
				$(location).attr('href', 'a_index.jsp');

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

function reserve() {

	var MOVIE_NAME = $('#MOVIE_NAME').val();
	var SCREEN_DATE = $('#SCREEN_DATE').val();
	var SCREEN_NUMBER = $('#SCREEN_NUMBER').val();

	$.ajax({
		type : 'POST',
		url : './ScreenSearchServlet',
		data : {
			MOVIE_NAME : MOVIE_NAME,
			SCREEN_DATE:SCREEN_DATE,
			SCREEN_NUMBER:SCREEN_NUMBER
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
function showMovieInfo() {

	var MOVIE_NAME = $('#MOVIE_NAME').text();

	$.ajax({
		type : 'POST',
		url : './MovieGetServlet',
		data : {
			MOVIE_NAME : MOVIE_NAME
		},
		success : function(result) {

			if (result == 1) {

				alert(result);
			}
		}
	});

} 

function selectMovieInfo() {

	var MOVIE_NAME = $('#MOVIE_NAME').val();

	$.ajax({
		type : 'POST',
		url : './UserRegisterCheckServlet',
		data : {
			MOVIE_NAME : MOVIE_NAME
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
var moviecost = 0;
function PointCheckFunction() {

	var MEMBER_ID = $('#MEMBER_ID').text();
	var MOVIE_NAME = $('#MOVIE_NAME').text();
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
			var array = new Array();

			if(result == "0,0"){
				$('#statusMessage1').html('error');
				$('#statusMessage1').css("color", "red");
			}
			array = result.split(',');
			moviecost = array[0];
			var point =array[1];
			if(selectValue=='전액'){
				if (moviecost - point <= 0) {
					$('#statusMessage1').html("영화가격 : "+ moviecost +"원 " +'포인트로 전액결제가능');
					$('#statusMessage1').css("color", "green");
					$('#statusMessage2').html("결제금액 : 0");
					$('#statusMessage2').css("color", "green");
				}

			}
			if(selectValue=='일부') {
				partpointclickFunction();
			}
			if(selectValue=='미사용'){
				$('#statusMessage1').html(moviecost + '원으로 모두 결제하겠습니다.');
				$('#statusMessage1').css("color", "green");
				$('#statusMessage2').html('결제금액 : ' + moviecost);
				$('#statusMessage2').css("color", "red");
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
				$(location).attr('href', 'a_update.jsp');

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
				$(location).attr('href', './a_index.jsp');

			}

			if (result == -1) {
				$('#statusMessage').html('모든정보를 입력하세요.');
				$('#statusMessage').css("color", "red");
			}
		}
	});

}
function pointclickFunction() {

	$('#pointselect').addClass('hidden');

}
function creditclickFunction() {

	$('#pointselect').removeClass('hidden');

}
function partpointclickFunction() {

	$('#partpointselect').removeClass('hidden');

}
var pointvalue=0;
function partpointCheckFunction() {
	pointvalue = $('#pointvalue').val();
	if((moviecost - pointvalue) < 0){
		$('#statusMessage1').html('영화값을 초과했습니다');
		$('#statusMessage1').css("color", "red");
	}
	else{
		$('#statusMessage1').html('포인트를 제외한 가격입니다 : '+ (moviecost-pointvalue));
		$('#statusMessage1').css("color", "red");
		$('#statusMessage2').html('결제금액 : ' + (moviecost-point));
		$('#statusMessage2').css("color", "green");
	}

}

