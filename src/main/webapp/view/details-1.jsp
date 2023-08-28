<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sân bóng nhân tạo Trung Hòa</title>
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
    <div id="container-sanbong" class="container-fluid">
        <div class="row">
            <div class="col-sm-12 col-md-8 col-lg-8">
                <main>
                    <h4><b>Sân bóng nhân tạo Trung Hòa</b></h4>
                    <img class="img-rounded img-thumbnail" src="../images/TH/image1.jpg" alt="image1">
                    <p><b>Giới thiệu chung: </b>Sân bóng nhân tạo Trung Hòa xây dựng và hoàn thành vào tháng 10/2019, bao gồm 3 sân cỏ nhân tạo.</p>
                    <p><b>Địa chỉ:</b></p> <address id="add">Ngõ 55-57, đường Trần Phú, Hà Đông</address>
                    <p>(trong trường Đại học Nghệ thuật Trung ương)</p>
                    <p><b>Các dịch vụ:</b></p>
                    <ol type="1">
                        <li>Cho thuê sân theo giờ, thuê theo tuần, tháng.</li>
                        <li>Không cần đặt cọc.</li>
                        <li>Có nước uống miễn phí.</li>
                        <li>Có quần áo thi đấu cho các đội (300k/đội).</li>
                        <li>Có trọng tài (200k/giờ).</li>
                        <li>Gửi xe miễn phí, có chỗ để ôtô.</li>
                    </ol>
                    <p><b>Liên hệ:</b> <a href="tel:+84962332538">0962332538</a> - Anh Hoàng</p>
                    <p><b>Giá thuê sân:</b></p>
                    <ul>
                        <li><time>06:00</time> - <time>16:00</time>: 300k/h</li>
                        <li><time>16:00</time> - <time>17:30</time>: 600k/h</li>
                        <li><time>17:30</time> - <time>20:30</time>: 800k/h</li>
                        <li><time>20:30</time> - <time>22:00</time>: 400k/h</li>
                    </ul>
                    <form method="get" action="${pageContext.request.contextPath }/FieldServlet">
                        <input type="hidden" value="1" name="tensan">
                        <button type="submit" class="btn btn-success"><strong>Đặt sân</strong></button>
                    </form>
                </main>
            </div>
            <div class="hidden-sm col-md-4 col-lg-4">
                <aside>
                    <p><b>Một số hình ảnh sân:</b></p>
                    <figure>
                        <img class="img-rounded img-thumbnail" src="../images/TH/image1.jpg" alt="image1"><br>
                        <figcaption>Sân bóng tiêu chuân Châu Âu. Có dịch vụ đi kèm: nước uống, đồng phục thi đấu,... có chỗ để xe miễn phí</figcaption>
                    </figure>
                    <figure>
                        <img class="img-rounded img-thumbnail" src="../images/TH/image2.jpg" alt="image2"><br>
                        <figcaption>Mặt cỏ nhân tạo mới nhất, được thay thường xuyên, đảm bảo tiêu chuẩn</figcaption>
                    </figure>
                    <figure>
                        <img class="img-rounded img-thumbnail" src="../images/TH/image3.jpg" alt="image3"><br>
                        <figcaption>Đồng phục đẹp cho nhiều đội</figcaption>
                    </figure>
                    <figure>
                        <img class="img-rounded img-thumbnail" src="../images/TH/image4.jpg" alt="image4"><br>
                        <figcaption>Lưới ngăn cách giữa các sân</figcaption>
                    </figure>
                    <figure>
                        <img class="img-rounded img-thumbnail" src="../images/TH/image5.jpg" alt="image5"><br>
                        <figcaption>Không gian thoáng mát</figcaption>
                    </figure>
                    <figure>
                        <img class="img-rounded img-thumbnail" src="../images/TH/image6.jpg" alt="image6"><br>
                        <figcaption>Hệ thống thoát nước</figcaption>
                    </figure>
                    <figure>
                        <img class="img-rounded img-thumbnail" src="../images/TH/image7.jpg" alt="image7"><br>
                        <figcaption>Hỗ trợ tổ chức giải đấu</figcaption>
                    </figure>
                </aside>
            </div>
        </div>
    </div>
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