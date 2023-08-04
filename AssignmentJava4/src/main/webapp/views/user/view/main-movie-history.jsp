<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<main>
	<article>

		<section class="tv-series">
			<div class="container">

				<p class="section-subtitle" style="padding-top: 80px;">TV Series
					Has Been Seen</p>

				<h2 class="h2 section-title">LỊCH SỬ MOVIES</h2>

				<ul class="movies-list">
					<c:forEach items="${videos}" var="video">
						<li>
							<div class="movie-card">

								<a
									href="<c:url value="/video?action=watch&id=${video.href}"></c:url>">
									<figure class="card-banner">
										<img
											src="<c:url value="/views/user/view/assets/images/${video.poster}"></c:url>"
											alt="Halo movie poster">
									</figure>
								</a>

								<div class="title-wrapper">
									<a
										href="<c:url value="/video?action=watch&id=${video.href}"></c:url>">
										<h3 class="card-title">${video.title}</h3>
									</a>

									<time datetime="2022">2022</time>
								</div>

								<div class="card-meta">
									<div class="badge badge-outline">4K</div>
									<div class="stars">
										<ion-icon name="star-outline"></ion-icon>

										<time datetime="VIEW">${video.views} view</time>
									</div>
									<div class="duration">
										<ion-icon name="share-social-outline"></ion-icon>

										<time datetime="PT137M">${video.shares}</time>
									</div>

									<div class="duration">
										<ion-icon name="time-outline"></ion-icon>

										<time datetime="PT126M">126 phút</time>
									</div>
									<div class="rating">
										<ion-icon class="heart-icon" name="heart-outline"></ion-icon>
										<data class="rating-value">5</data>
									</div>
								</div>

							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</section>

	</article>
</main>