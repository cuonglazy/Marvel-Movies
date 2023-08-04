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


<title>Login & Registration Form</title>
</head>
<body>

	<div class="container">
		<div class="forms">
			<div class="form login">
				<span class="title">Đăng nhập</span>

				<form action="login" method="POST">
					<div class="input-field">
						<input type="text" name="username" placeholder="Tên đăng nhập"
							required> <i class="uil uil-user icon"></i>
					</div>
					<div class="input-field">
						<input type="password" name="password" class="password"
							placeholder="Mật khẩu" required> <i
							class="uil uil-lock icon"></i> <i
							class="uil uil-eye-slash showHidePw"></i>
					</div>

					<div class="checkbox-text">
						<div class="checkbox-content">
							<input type="checkbox" id="logCheck"> <label
								for="logCheck" class="text">Lưu mật khẩu</label>
						</div>

						<a href="#" class="text forgot-link">Quên mật khẩu?</a>
					</div>

					<div class="input-field button">
						<input type="submit" value="Login">
					</div>
				</form>

				<div class="login-signup">
					<span class="text">Chưa có tài khoản? <a href="#"
						class="text signup-link">Đăng ký ngay</a>
					</span>
				</div>
			</div>
			<!-- Forgot Password Form -->
			<div class="form forgot" style="display: none;">
				<span class="title">Quên mật khẩu</span>

				<form action="forgotPass" method="POST">
					<div class="input-field">
						<input type="email" id="email" name="email"
							placeholder="Email của bạn" required> <i
							class="uil uil-envelope"></i>
					</div>
					<div class="input-field button">
						<input type=submit id="sendBtn" value="Gửi yêu cầu">
					</div>
					<h3 style="color: red" id="messageReturn"></h3>
				</form>

				<div class="login-signup">
					<span class="text">Quay lại <a href="#"
						class="text login-link">đăng nhập</a>
					</span>
				</div>
			</div>

			<!-- Registration Form -->
			<div class="form signup">
				<span class="title">Đăng ký</span>

				<form action="register" method="POST">
					<div class="input-field">
						<input type="text" name="username" placeholder="Tên đăng nhập"
							required> <i class="uil uil-user icon"></i>
					</div>
					<div class="input-field">
						<input type="email" name="email" placeholder="Email của bạn"
							required> <i class="uil uil-envelope"></i>
					</div>

					<div class="input-field">
						<input type="password" name="password" class="password"
							placeholder="Tạo mật khẩu" required> <i
							class="uil uil-lock icon"></i>
					</div>
					<div class="input-field">
						<input type="password" name="cfmPass" class="password"
							placeholder="Xác nhận mật khẩu" required> <i
							class="uil uil-lock icon"></i> <i
							class="uil uil-eye-slash showHidePw"></i>
					</div>

					<div class="checkbox-text">
						<div class="checkbox-content">
							<input type="checkbox" id="termCon"> <label for="termCon"
								class="text">Tôi chấp nhận tất cả các điều khoản và điều
								kiện</label>
						</div>
					</div>

					<div class="input-field button">
						<input type="submit" value="Đăng ký">
					</div>
				</form>

				<div class="login-signup">
					<span class="text">Bạn đã có tài khoản? <a href="#"
						class="text login-link">Đăng nhập ngay</a>
					</span>
				</div>
			</div>
		</div>
	</div>

<script  src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src='<c:url value="/views/user/view/assets/js/login.js"/>'></script>
	<script>
// Quên mật khẩu
  
    $('#sendBtn').click(function() {
        $('#messageReturn').text('');
        var email = $('#email').val();
        var formData = {'email': email};
        $.ajax({
            data: formData
        }).then(function(data) { 
            $('#messageReturn').text('Password has been reset, please check your email');
            setTimeout(function() {
                window.location.href = 'http://localhost:8080/AssignmentJava4/index';
            }, 5*1000);
        }).fail(function(error){
            $('#messageReturn').text('Your information is not correct, try again');
        });
    });
	</script>

</body>
</html>

