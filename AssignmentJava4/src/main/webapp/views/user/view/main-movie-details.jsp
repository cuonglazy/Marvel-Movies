<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<main>
	<article>

		<!-- 
        - #MOVIE DETAIL
      -->

		<section class="movie-detail">
			<div class="container">

				<figure class="movie-detail-banner">

					<img
						src="<c:url value="/views/user/view/assets/images/${video.poster}"></c:url>"
						alt="Free guy movie poster">

					<button class="play-btn">
						<ion-icon name="play-circle-outline"></ion-icon>
					</button>

				</figure>

				<div class="movie-detail-content">

					<p class="detail-subtitle">Phim vừa ra mắt</p>

					<h1 class="h1 detail-title">
						 <strong>${video.title}</strong>
					</h1>

					<div class="meta-wrapper">

						<div class="badge-wrapper">
							<div class="badge badge-fill">18+</div>

							<div class="badge badge-outline">HD</div>
						</div>

						<div class="ganre-wrapper">
							<a href="#">Hài hước,</a> <a href="#">Hành động,</a> <a href="#">Phiêu
								lưu</a>

							<!-- <a href="#">Khoa học viễn tưởng</a> -->
						</div>

						<div class="date-time">

							<div>
								<ion-icon name="calendar-outline"></ion-icon>

								<time datetime="2021">2021</time>
							</div>
							<div class="stars">
								<ion-icon name="star-outline"></ion-icon>

								<time datetime="VIEW">40 view</time>
							</div>
							<div>
								<ion-icon name="time-outline"></ion-icon>

								<time datetime="PT115M">115 phút</time>
							</div>

						</div>

					</div>

					<p class="storyline">${video.description}</p>

					<div class="details-actions">
						<button class="btn btn-primary">
							<ion-icon name="play"></ion-icon>

							<span>Xem phim</span>
						</button>
						<c:if test="${not empty sessionScope.currentUser}">
						<a class="btn btn-primary">
							<!-- <button class="share"> -->
							<ion-icon name="share-social"></ion-icon>

							<span>Chia sẻ</span>
							<!-- </button> -->
						</a>
						<a class="like-button btn btn-primary">
							<ion-icon name="heart-outline"></ion-icon>
							<span>Like</span>
						</a>
						</c:if>
					</div>

				</div>
		</section>


		<div class="container">
			<p class="section-subtitle">- Best Trailer -</p>

			<h2 class="h2 section-title">MOVIES TRAILER OFFICIAL</h2>
			<br>

			<iframe width="1280" height="660"
				src="https://www.youtube.com/embed/${video.href}"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
				allowfullscreen>
				</iframe>

			<div class="details-actions1">
			<c:if test="${not empty sessionScope.currentUser}">
				<button id="likeOrUnlike" class="like-button btn btn-primary">
					<c:choose>
						<c:when test="${flagLikedBtn == true}">
							<ion-icon name="heart"></ion-icon>
							<span>Unlike</span>
						</c:when>
						<c:otherwise>
							<ion-icon name="heart-outline"></ion-icon>
							<span>like</span>
						</c:otherwise>
					</c:choose>
				</button>
				<a class="btn btn-primary">
					<!-- <button class="share"> -->
					<ion-icon name="share-social"></ion-icon>

					<span>Chia sẻ</span>
					<!-- </button> -->
				</a>
				</c:if>
				<input id="videoIdHdn" type="hidden" value="${video.href}" />
			</div>
		</div>


		<!-- 
        - #TV SERIES
      -->

		<section class="tv-series">
			<div class="container">

				<p class="section-subtitle">Best TV Series</p>

				<h2 class="h2 section-title">PHIM HÀNH ĐỘNG HAY</h2>

				<ul class="movies-list">

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">

									<img
										src="<c:url value="/views/user/view/assets/images/series-1.png"></c:url>"
										alt="Moon Knight movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">Moon Knight</h3>
								</a>

								<time datetime="2022">2022</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">2K</div>
								<div class="stars">
									<ion-icon name="star-outline"></ion-icon>

									<time datetime="VIEW">40 view</time>
								</div>
								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT47M">47 phút</time>
								</div>

								<div class="rating">
									<ion-icon class="heart-icon" name="heart-outline"></ion-icon>
									<data class="rating-value">8</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/user/view/assets/images/series-2.png"></c:url>"
										alt="Halo movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">Halo</h3>
								</a>

								<time datetime="2022">2022</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">2K</div>
								<div class="stars">
									<ion-icon name="star-outline"></ion-icon>

									<time datetime="VIEW">40 view</time>
								</div>
								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT59M">59 phút</time>
								</div>

								<div class="rating">
									<ion-icon class="heart-icon" name="heart-outline"></ion-icon>
									<data class="rating-value">8</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/series-3.png"></c:url>"
										alt="Vikings: Valhalla movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">Vikings: Valhalla</h3>
								</a>

								<time datetime="2022">2022</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">2K</div>
								<div class="stars">
									<ion-icon name="star-outline"></ion-icon>

									<time datetime="VIEW">40 view</time>
								</div>
								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT51M">51 phút</time>
								</div>

								<div class="rating">
									<ion-icon class="heart-icon" name="heart-outline"></ion-icon>
									<data class="rating-value">7</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/series-4.png"></c:url>"
										alt="Money Heist movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">Money Heist</h3>
								</a>

								<time datetime="2017">2017</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">4K</div>
								<div class="stars">
									<ion-icon name="star-outline"></ion-icon>

									<time datetime="VIEW">40 view</time>
								</div>
								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT70M">70 phút</time>
								</div>
								<div class="rating">
									<ion-icon class="heart-icon" name="heart-outline"></ion-icon>
									<data class="rating-value">4</data>
								</div>
							</div>

						</div>
					</li>

				</ul>

			</div>
		</section>

	</article>
</main>
<script>
$('#likeOrUnlike').click(function() {
	var videoId = $('#videoIdHdn').val();
	$.ajax({
		url: 'video?action=like&id=' + videoId
	}).then(function(){
		var text = $('#likeOrUnlike').text();
		if (text.indexOf('Like') != -1) {
			$('#likeOrUnlike').text('Unlike');
		} else {
			$('#likeOrUnlike').text('Like');
		}
	}).fail(function(){
		alert('Oops!!! Please try again');
	});
});
</script>