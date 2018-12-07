function loginCheckFunction() {

	var userID = $('#userID').val();
	var userPW = $('#userPW').val();

	$.ajax({
		type : 'POST',
		url : './UserLoginServlet',
		data : {
			userID : userID,
			userPW : userPW
		},
		success : function(result) {


			if(result ==1 ){
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






function serialFunction() {

	var serialID = $('#serialID').val();
	var userID = $('#userID').val();

	alert(userID);
	alert(serialID);

	$.ajax({
		type : 'POST',
		url : './UserSerialRegistor',
		data : {
			serialID : serialID,
			userID : userID

		},
		success : function(result) {

			alert(result);
			if(result == 1 ){
				alert("키 등록 완료 ");
				$(location).attr('href', './m_index.jsp');

			}
			if (result == 7) {
				$('#statusMessage').html('키를 입력해주세요.');
				$('#statusMessage').css("color", "red");

			}
			if (result == 2) {
				$('#statusMessage').html('이미 등록된 키 입니다.');
				$('#statusMessage').css("color", "red");
			}

			if (result == -1 || result == 0) {
				$('#statusMessage').html('제품 키를 확인해주세요.');
				$('#statusMessage').css("color", "red");
			}
		}
	});

}

//[Y]
function passwordCheckFunction() {
	var userPW1 = $('#userPW1').val();
	var userPW2 = $('#userPW2').val();

	if (userPW1 != userPW2 && userPW2 != "") {
		$('#statusMessage').html('비밀번호가 달라요');
		$('#statusMessage').css("color", "red");
	} else {
		$('#statusMessage').html('');
	}
}



//[Y]
function registerCheckFunction() {

	var userID = $('#userID').val();

	$.ajax({
		type : 'POST',
		url : './UserRegisterCheckServlet',
		data : {
			userID : userID
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

	var userID = $('#userID').val();
	var userPW = $('#userPW').val();

	$.ajax({
		type : 'POST',
		url : './UserLoginServlet',
		data : {
			userID : userID,
			userPW : userPW
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

function closeLayer( obj ) {
	$(obj).parent().parent().hide();
}