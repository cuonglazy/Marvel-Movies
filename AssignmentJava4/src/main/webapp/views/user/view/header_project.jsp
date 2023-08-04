
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<header class="header" data-header>
	<div class="container">

		<div class="overlay" data-overlay></div>

		<a href="<c:url value="/views/user/index.jsp"></c:url>" class="logo">
			<img
			src="<c:url value="/views/user/view/assets/images/logo.svg"></c:url>"
			alt="Filmlane logo">
		</a>

		<div class="header-actions">

			<button class="search-btn">
				<ion-icon name="search-outline"></ion-icon>
			</button>

			<div class="lang-wrapper">
				<label for="language" > <ion-icon name="globe-outline"></ion-icon>
				</label> <select name="language" id="language">
					<option value="vn">VN</option>
					<option value="en">EN</option>
					<option value="jp">JP</option>
					<option value="fr">FR</option>
				</select>
			</div>
			<c:choose>
				<c:when test="${not empty sessionScope.currentUser}">
					<a class="btn btn-primary" href="">${sessionScope.currentUser.username}</a>
					<a class="btn btn-primary" href="logout">Logout</a>
				</c:when>
				<c:otherwise>
					<a class="btn btn-primary" href="login">Đăng nhập</a>
				</c:otherwise>
			</c:choose>


		</div>

		<button class="menu-open-btn" data-menu-open-btn>
			<ion-icon name="reorder-two"></ion-icon>
		</button>

		<nav class="navbar" data-navbar>

			<div class="navbar-top">

				<a href="<c:url value="/views/user/index.jsp"></c:url>" class="logo">
					<img
					src="<c:url value="/views/user/view/assets/images/logo.svg"></c:url>"
					alt="Filmlane logo">
				</a>

				<button class="menu-close-btn" data-menu-close-btn>
					<ion-icon name="close-outline"></ion-icon>
				</button>

			</div>

			<ul class="navbar-list">

				<li><a href="index"
					class="navbar-link">Trang chủ</a></li>

				<li><a href="changePass" class="navbar-link">Phim lẻ</a></li>

				<li><a href="changePass" class="navbar-link">Phim bộ</a></li>

				<li><a href="history" class="navbar-link">Lịch sử</a></li>

				<li><a href="favorites" class="navbar-link">Phim yêu thích</a></li>

			</ul>

			<ul class="navbar-social-list">

				<li><a href="#" class="navbar-social-link"> <ion-icon
							name="logo-twitter"></ion-icon>
				</a></li>

				<li><a href="#" class="navbar-social-link"> <ion-icon
							name="logo-facebook"></ion-icon>
				</a></li>

				<li><a href="#" class="navbar-social-link"> <ion-icon
							name="logo-pinterest"></ion-icon>
				</a></li>

				<li><a href="#" class="navbar-social-link"> <ion-icon
							name="logo-instagram"></ion-icon>
				</a></li>

				<li><a href="#" class="navbar-social-link"> <ion-icon
							name="logo-youtube"></ion-icon>
				</a></li>

			</ul>

		</nav>

	</div>
</header>