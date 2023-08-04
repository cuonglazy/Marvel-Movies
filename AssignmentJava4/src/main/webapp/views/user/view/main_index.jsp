<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!--  -->
<main>
	<article>

		<!-- 
        - #HERO
      -->

		<section class="hero">
			<div class="container">

				<div class="hero-content">

					<p class="hero-subtitle">Filmlane</p>

					<h1 class="h1 hero-title">
						Unlimited <strong>Movie</strong>, TVs Shows, & More.
					</h1>

					<div class="meta-wrapper">

						<div class="badge-wrapper">
							<div class="badge badge-fill">18+</div>

							<div class="badge badge-outline">HD</div>
						</div>

						<div class="ganre-wrapper">
							<a href="#">Lãng mạn,</a> <a href="#">Hành động</a>
						</div>

						<div class="date-time">

							<div>
								<ion-icon name="calendar-outline"></ion-icon>

								<time datetime="2022">2022</time>
							</div>

							<div>
								<ion-icon name="time-outline"></ion-icon>

								<time datetime="PT128M">128 phút</time>
							</div>

						</div>

					</div>

					<button class="btn btn-primary">
						<ion-icon name="play"></ion-icon>

						<span>Xem ngay</span>
					</button>

				</div>

			</div>
		</section>





		<!-- 
        - #UPCOMING
      -->

		<section class="upcoming">
			<div class="container">

				<div class="flex-wrapper">

					<div class="title-wrapper">
						<p class="section-subtitle">Online Streaming</p>

						<h2 class="h2 section-title">Phim thịnh hành</h2>
					</div>

					<ul class="filter-list">

						<li>
							<button class="filter-btn">Hành động</button>
						</li>

						<li>
							<button class="filter-btn">Tâm lý</button>
						</li>

						<li>
							<button class="filter-btn">Khoa học viễn tưởng</button>
						</li>

					</ul>

				</div>


				<ul class="movies-list  has-scrollbar">
					<c:forEach items="${videos}" var="video">
						<li>
							<div class="movie-card">

								<a href="<c:url value="/video?action=watch&id=${video.href}"></c:url>">
									<figure class="card-banner">

										<img
											src="<c:url value="${video.poster}"></c:url>"
											alt="The Northman movie poster">
									</figure>
								</a>

								<div class="title-wrapper">
									<a href="<c:url value="/video?action=watch&id=${video.href}"></c:url>">
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


		<!-- 
        - #TOP RATED
      -->

		<section class="top-rated">
			<div class="container">

				<p class="section-subtitle">Online Streaming</p>

				<h2 class="h2 section-title">PHIM ĐỀ CỬ</h2>

				<ul class="filter-list">

					<li>
						<button class="filter-btn">Hành động</button>
					</li>

					<li>
						<button class="filter-btn">Tâm lý</button>
					</li>

					<li>
						<button class="filter-btn">Tài liệu</button>
					</li>

					<li>
						<button class="filter-btn">Khoa học viễn tưởng</button>
					</li>

				</ul>

				<ul class="movies-list">

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">

									<img
										src="<c:url value="/views/user/view/assets/images/movie-1.png"></c:url>"
										alt="Sonic the Hedgehog 2 movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">Sonic the Hedgehog 2</h3>
								</a>

								<time datetime="2022">2022</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">2K</div>

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT122M">122 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>7.8</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/movie-2.png"></c:url>"
										alt="Morbius movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">Morbius</h3>
								</a>

								<time datetime="2022">2022</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">HD</div>

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT104M">104 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>5.9</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/movie-3.png"></c:url>"
										alt="The Adam Project movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">The Adam Project</h3>
								</a>

								<time datetime="2022">2022</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">4K</div>

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT106M">106 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>7.0</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/movie-4.png"></c:url>"
										alt="Free Guy movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">Free Guy</h3>
								</a>

								<time datetime="2021">2021</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">4K</div>

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT115M">115 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>7.7</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/movie-5.png"></c:url>"
										alt="The Batman movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">The Batman</h3>
								</a>

								<time datetime="2022">2022</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">4K</div>

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT176M">176 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>7.9</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/movie-6.png"></c:url>"
										alt="Uncharted movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">Uncharted</h3>
								</a>

								<time datetime="2022">2022</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">HD</div>

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT116M">116 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>7.0</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/movie-7.png"></c:url>"
										alt="Death on the Nile movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">Death on the Nile</h3>
								</a>

								<time datetime="2022">2022</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">2K</div>

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT127M">127 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>6.5</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/movie-8.png"></c:url>"
										alt="The King's Man movie poster">
								</figure>
							</a>

							<div class="title-wrapper">
								<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
									<h3 class="card-title">The King's Man</h3>
								</a>

								<time datetime="2021">2021</time>
							</div>

							<div class="card-meta">
								<div class="badge badge-outline">HD</div>

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT131M">131 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>7.0</data>
								</div>
							</div>

						</div>
					</li>

				</ul>

			</div>
		</section>





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

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT47M">47 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>8.6</data>
								</div>
							</div>

						</div>
					</li>

					<li>
						<div class="movie-card">

							<a href="<c:url value="/views/user/movie-details.jsp"></c:url>">
								<figure class="card-banner">
									<img
										src="<c:url value="/views/user/view/assets/images/series-2.png"></c:url>"
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

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT59M">59 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>8.8</data>
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

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT51M">51 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>8.3</data>
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

								<div class="duration">
									<ion-icon name="time-outline"></ion-icon>

									<time datetime="PT70M">70 phút</time>
								</div>

								<div class="rating">
									<ion-icon name="star"></ion-icon>

									<data>8.3</data>
								</div>
							</div>

						</div>
					</li>

				</ul>

			</div>
		</section>


	</article>
</main>