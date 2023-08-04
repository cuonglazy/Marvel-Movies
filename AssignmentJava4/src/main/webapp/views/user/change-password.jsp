<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<!-- === Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- ===== Iconscout CSS ===== -->
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<link rel="shortcut icon"
	href="<c:url value="/views/user/view/readme-images/favicon.svg"></c:url>"
	type="image/svg+xml">

<!-- ===== CSS ===== -->
<link rel="stylesheet"
	href="<c:url value="/views/user/view/assets/css/login.css"></c:url>">

<title>Change Password</title>
</head>
<body>

	<div class="container">
		<div class="forms">
			<div class="form login">
				<span class="title">Đổi mật khẩu</span>

				<form action="changePass" method="POST">
					<div class="input-field">
						<input type="password" name="currentPass" id="currentPass" class="password"
							placeholder="Mật khẩu hiện tại" required> <i
							class="uil uil-lock icon"></i> <i class=""></i>
					</div>
					<div class="input-field">
						<input type="password" name="newPass" id="newPass" class="password" placeholder="Mật khẩu mới"
							required> <i class="uil uil-lock icon"></i> <i class=""></i>
					</div>
					<div class="input-field"> 
						<input type="password" name="newPass" class="password"
							placeholder="Xác thực mật khẩu" required> <i
							class="uil uil-lock icon"></i> <i
							class="uil uil-eye-slash showHidePw"></i>
					</div>
					<h5 style="color: red" id="messageChangePass"></h5>
					<div class="checkbox-text">
						<a href="<c:url value="/index"></c:url>"  class="text forgot-link">Về trang chủ</a>
					</div>
					<div class="input-field button">
						<input type="submit" id="changePassBtn" value="Đổi mật khẩu">
					</div>
				</form>
			</div>
		</div>
	</div>

	<script>
	$('#changePassBtn').click(function() {
        $('#messageChangePass').text('');
        var currentPass = $('#currentPass').val();
        var newPass = $('#newPass').val();
        var formData = {
        		'currentPass': currentPass,
        		'newPass': newPass		
        };
        $.ajax({
            url: 'changePass',
            type: 'POST',
            data: formData
        }).then(function(data) {
            $('#messageChangePass').text('your password has been changed successfully');
        }).fail(function(error){
            $('#messageChangePass').text('Your null is not correct, try again');
        });
    });
	</script>
	<script src="<c:url value="/views/user/view/assets/js/login.js"></c:url>"></script>
</body>
</html>

