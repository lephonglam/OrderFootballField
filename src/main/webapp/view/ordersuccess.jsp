<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đặt sân</title>
<link rel="icon" type="image/png" href="../images/TH/logo.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/responsive.css">
</head>

<body>
	<header>
		<div id="menu">
			<nav class="navbar navbar-expand-sm navbar-light bg-light fixed-top">
				<a class="navbar-brand" href="#"> <img
					src="../images/TH/logo.png" alt="logo" width="60em" height="60em">
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#mobilemenu">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="mobilemenu">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							href="index.html">TRANG CHỦ</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">GIỚI
								THIỆU</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" role="button"
							data-bs-toggle="dropdown" href="#">SÂN BÓNG<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="details-1.jsp">Sân
										bóng nhân tạo Trung Hòa</a></li>
								<li><a class="dropdown-item" href="details-2.jsp">Sân
										bóng Đại học Y Hà Nội</a></li>
								<li><a class="dropdown-item" href="details-3.jsp">Sân
										bóng Đại Bách khoa Hà Nội</a></li>
							</ul></li>

					</ul>
				</div>
			</nav>
		</div>
		<div id="carouselBanner" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselBanner"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselBanner"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselBanner"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="../images/TH/banner1.jpg" class="d-block w-100" alt="logo">
					<div
						class="carousel-caption d-none d-md-block position-absolute top-0 start-50 translate-middle-x">
						<h1 class="m-b-20 display-4">
							<strong>Thuê sân bóng</strong>
						</h1>
					</div>
					<div class="carousel-caption d-none d-md-block text-center">
						<p>Thuê sân bóng là trang web kết nối chủ sân với những đội
							bóng</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../images/TH/banner2.jpg" class="d-block w-100" alt="logo">
					<div
						class="carousel-caption d-none d-md-block position-absolute top-0 start-50 translate-middle-x">
						<h1 class="m-b-20 display-4">
							<strong>Thuê sân bóng</strong>
						</h1>
					</div>
					<div class="carousel-caption d-none d-md-block text-center">
						<p>Trang web cung cấp các tiện ích thông minh giúp các đội
							bóng tìm được sân phù hợp nhất, đặt sân một cách hiệu quả nhất</p>
					</div>
				</div>
				<div class="carousel-item">
					<img src="../images/TH/banner3.jpg" class="d-block w-100" alt="logo">
					<div
						class="carousel-caption d-none d-md-block position-absolute top-0 start-50 translate-middle-x">
						<h1 class="m-b-20 display-4">
							<strong>Thuê sân bóng</strong>
						</h1>
					</div>
					<div class="carousel-caption d-none d-md-block text-center">
						<p>Hệ thống quản lý sân, lịch biểu thông minh giảm thiểu tối
							đa thời gian chi phí, tăng doanh thu cho chủ sân</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselBanner" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselBanner" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</header>
	<div id="confirm" class="container" style="width: 50vw">
		<div class="row mt-4">
			<div class="col-sm-12 col-md-12 text-center">
				<h2 style="color:green">Đặt sân thành công!</h2>
			</div>
		</div>
		
	</div>

	<footer id="container-footer" class="container-fluid">
		<div class="row">
			<div id="thuesanbong" class="col-sm-12 col-md-6 col-lg-6">
				<h3>THUÊ SÂN BÓNG</h3>
				<ul>
					<li><b>Liên hệ:</b> <a href="thuesanbong@gmail.com">thuesanbong@gmail.com</a></li>
					<li><b>Facebook:</b> <a
						href="https://www.facebook.com/profile.php?id=100029127222671">Thuê
							sân bóng</a></li>
					<li><b>Zalo: </b><a href="zalo:0912345678">0912345678</a></li>
				</ul>
			</div>
			<div id="thongtin" class="col-sm-12 col-md-6 col-lg-6">
				<h3>THÔNG TIN</h3>
				<nav>
					<ul>
						<li><a href="index.html">Trang chủ</a></li>
						<li><a href="about.html">Giới thiệu</a></li>
						<li>Sân bóng
							<ul class="menu">
								<li><a href="details-1.jsp">Sân bóng nhân tạo Trung Hòa</a></li>
								<li><a href="details-2.jsp">Sân bóng Đại học Y Hà Nội</a></li>
								<li><a href="details-2.jsp">Sân bóng Đại Bách khoa Hà
										Nội</a></li>
							</ul>
						</li>

					</ul>

				</nav>
			</div>
		</div>
	</footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
	<script src="../js/book.js"></script>
</body>

</html>