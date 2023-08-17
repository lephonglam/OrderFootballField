<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đặt sân</title>
    <link rel="icon" type="image/png" href="../images/TH/logo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/responsive.css">
</head>

<body>
    <header>
        <div id="menu">
            <nav class="navbar navbar-expand-sm navbar-light bg-light fixed-top">
                <a class="navbar-brand" href="#">
                    <img src="../images/TH/logo.png" alt="logo" width="60em" height="60em">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mobilemenu">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="mobilemenu">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link active" href="index.html">TRANG CHỦ</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.html">GIỚI THIỆU</a></li>
                        <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" href="#">SÂN BÓNG<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="details-1.jsp">Sân bóng nhân tạo Trung Hòa</a></li>
                                <li><a class="dropdown-item" href="details-2.jsp">Sân bóng Đại học Y Hà Nội</a></li>
                                <li><a class="dropdown-item" href="details-3.jsp">Sân bóng Đại Bách khoa Hà Nội</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </nav>
        </div>
        <div id="carouselBanner" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselBanner" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../images/TH/banner1.jpg" class="d-block w-100" alt="logo">
                    <div class="carousel-caption d-none d-md-block position-absolute top-0 start-50 translate-middle-x">
                        <h1 class="m-b-20 display-4"><strong>Thuê sân bóng</strong></h1>
                    </div>
                    <div class="carousel-caption d-none d-md-block text-center">
                        <p>Thuê sân bóng là trang web kết nối chủ sân với những đội bóng</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../images/TH/banner2.jpg" class="d-block w-100" alt="logo">
                    <div class="carousel-caption d-none d-md-block position-absolute top-0 start-50 translate-middle-x">
                        <h1 class="m-b-20 display-4"><strong>Thuê sân bóng</strong></h1>
                    </div>
                    <div class="carousel-caption d-none d-md-block text-center">
                        <p>Trang web cung cấp các tiện ích thông minh giúp các đội bóng tìm được sân phù hợp nhất, đặt sân một cách hiệu quả nhất</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../images/TH/banner3.jpg" class="d-block w-100" alt="logo">
                    <div class="carousel-caption d-none d-md-block position-absolute top-0 start-50 translate-middle-x">
                        <h1 class="m-b-20 display-4"><strong>Thuê sân bóng</strong></h1>
                    </div>
                    <div class="carousel-caption d-none d-md-block text-center">
                        <p>Hệ thống quản lý sân, lịch biểu thông minh giảm thiểu tối đa thời gian chi phí, tăng doanh thu cho chủ sân</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselBanner" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselBanner" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
        </div>
    </header>
    <main>
        <h4><b>Đặt sân</b></h4>
        <form id="formdatsan" method="post" action="${pageContext.request.contextPath }/OrderFieldServlet" onsubmit="return myFunction08(event)">
            <div class="container-fluid">
                <div class="row mb-3">
                    <label for="tensan" class="col-sm-2 col-form-label">Tên sân</label>
                    <div class="col-sm-10">
                        <input type="text" id="tensan" name="tensan" class="form-control" value="${footballField.name }">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="diachi" class="col-sm-2 col-form-label">Địa chỉ</label>
                    <div class="col-sm-10">
                        <input type="text" id="diachi" name="diachi" class="form-control" value="${footballField.address }">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="lienhe" class="col-sm-2 col-form-label">Liên hệ</label>
                    <div class="col-sm-10">
                        <input type="text" id="lienhe" name="lienhe" class="form-control" value="${footballField.contact }">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="tennguoidat" class="col-sm-2 col-form-label">Tên người đặt</label>
                    <div class="col-sm-10">
                        <input type="text" id="tennguoidat" name="tennguoidat" oninput="myFunction01()" class="form-control">
                    </div>
                    <label class="col-sm-2 col-form-label"></label>
                    <div class="col-sm-10">
                        <span id="loitennguoidat"></span>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="sodienthoai" class="col-sm-2 col-form-label">Số điện thoại</label>
                    <div class="col-sm-10">
                        <input type="tel" id="sodienthoai" name="sodienthoai" oninput="myFunction02()" class="form-control">
                    </div>
                    <label class="col-sm-2 col-form-label"></label>
                    <div class="col-sm-10">
                        <span id="loisodienthoai"></span>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="khunggio" class="col-sm-2 col-form-label">Đặt khung giờ</label>
                    <div class="col-sm-10">
                        <input list="tuychon" type="text" class="form-control" id="khunggio" name="khunggio" oninput="myFunction03()" placeholder="--- Chọn khung giờ ---">
                        <datalist id="tuychon">
                            <option>06:00 - 16:00</option>
                            <option>16:00 - 17:30</option>
                            <option>17:30 - 20:30</option>
                            <option>20:30 - 22:00</option>
                        </datalist>
                    </div>
                    <label class="col-sm-2 col-form-label"></label>
                    <div class="col-sm-10">
                        <span id="loikhunggio"></span>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="sogio" class="col-sm-2 col-form-label">Số giờ</label>
                    <div class="col-sm-10">
                        <input type="number" id="sogio" name="sogio" min="0.5" step="0.5" oninput="myFunction04()" class="form-control">
                    </div>
                    <label class="col-sm-2 col-form-label"></label>
                    <div class="col-sm-10">
                        <span id="loisogio"></span>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="songuoichoi" class="col-sm-2 col-form-label">Số người chơi</label>
                    <div class="col-sm-10">
                        <input type="number" id="songuoichoi" name="songuoichoi" min="1" step="1" oninput="myFunction05()" class="form-control">
                    </div>
                    <label class="col-sm-2 col-form-label"></label>
                    <div class="col-sm-10">
                        <span id="loisonguoichoi"></span>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="sodoichoi" class="col-sm-2 col-form-label">Số đội chơi</label>
                    <div class="col-sm-10">
                        <input type="number" id="sodoichoi" name="sodoichoi" value="2" min="2" step="1" oninput="myFunction06()" class=" form-control ">
                    </div>
                    <label class="col-sm-2 col-form-label"></label>
                    <div class="col-sm-10 ">
                        <span id="loisodoichoi"></span>
                    </div>
                </div>
                <fieldset class="row mb-3 ">
                    <label class="col-sm-2 col-form-label pt-0 ">Đặt định kì</label>
                    <div class="col-sm-10 ">
                        <div class="form-check ">
                            <input class="form-check-input" type="radio" name="datdinhki" value="Không">
                            <label class="form-check-label" for="khong">Không</label>
                        </div>
                        <div class="form-check ">
                            <input class="form-check-input" type="radio" name="datdinhki" value="Hàng tuần" checked>
                            <label class="form-check-label" for="hangtuan">Hàng tuần</label>
                        </div>
                        <div class="form-check ">
                            <input class="form-check-input" type="radio" name="datdinhki" value="Hàng tháng">
                            <label class="form-check-label" for="hangthang">Hàng tháng</label>
                        </div>
                    </div>
                </fieldset>
                <div class="row mb-3 ">
                    <label class="col-sm-2 col-form-label pt-0 ">Dịch vụ thêm</label>
                    <div class="col-sm-10 ">
                    	<input type="hidden" id="thuedongphuc" name="dongphuc" value="">
                    	<input type="hidden" id="thuetrongtai" name="trongtai" value="">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox"  id="dongphuc">
                            <label class="form-check-label" for="dongphuc">Đồng phục thi đấu</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="trongtai">
                            <label class="form-check-label" for="trongtai">Thuê trọng tài</label>
                        </div>
                    </div>
                </div>
                <div class="row mb-3 ">
                    <label class="col-sm-2 col-form-label "></label>
                    <div class="col-sm-10 ">
                        <input type="submit" id="datsan" name="datsan" value="Đặt sân" class="btn btn-primary"/>
                    </div>
                </div>
            </div>
        </form>
    </main>
    <footer id="container-footer" class="container-fluid">
        <div class="row">
            <div id="thuesanbong" class="col-sm-12 col-md-6 col-lg-6">
                <h3>THUÊ SÂN BÓNG</h3>
                <ul>
                    <li><b>Liên hệ:</b> <a href="thuesanbong@gmail.com">thuesanbong@gmail.com</a></li>
                    <li><b>Facebook:</b> <a href="https://www.facebook.com/profile.php?id=100029127222671">Thuê sân bóng</a></li>
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
                                <li><a href="details-2.jsp">Sân bóng Đại Bách khoa Hà Nội</a></li>
                            </ul>
                        </li>

                    </ul>

                </nav>
            </div>
        </div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <script src="../js/book.js"></script>
</body>

</html>