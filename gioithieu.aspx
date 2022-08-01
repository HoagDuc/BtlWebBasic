<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gioithieu.aspx.cs" Inherits="BtlWebBasic.gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Giới thiệu</title>
    <link href="Style/gioithieu.css" rel="stylesheet" />
</head>
<body>
    <div class="header">
		<div class="header_top">
			<a href="Trangchu.aspx">
				<img width="200" height="80" src="images/logo.png" title="Shop" />
			</a>
			<div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
			</div>	
		</div>
		<div class="header_bot" id="header-bot">
			<ul>
				<li><a href="Trangchu.aspx">Trang chủ</a></li>
				<li><a href="gioithieu.aspx">Giới thiệu</a></li>
                <li><a href="Danhmucsanpham.aspx">Danh mục sản phẩm</a></li>
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
				<li><a href="Giohang.aspx">Giỏ hàng</a></li>
				<a href="javascript:void(0);" style="font-size:35px;" class="icon" onclick="responsive() ">&#9776;</a>
			</ul>
		</div>
	</div>
    <div class="gioithieu">
        <div class="gioithieu_column_one">
            <img src="images/logo.png" alt="lỗi" width="100%" />
        </div>
        <div class="gioithieu_column_two">
            <h2>Giới thiệu về Thành Đạt mobile</h2>
            <span>
                Đến với thị trường điện thoại di động Thành Đạt Mobile luôn cạnh tranh bằng sự uy tín với sản phẩm mới, giá hấp dẫn, nhiều ưu đãi dành cho khách hàng của mình. 
                Cũng chính vì lẽ đó từ một cửa hàng chuyên iPhone và iPad, Thành Đạt đã ngày càng phát triển mở rộng kinh doanh các sản phẩm của Apple như là bao da cùng phụ kiện thông minh công nghệ mới.
                Đến năm 2020 thì Thành Đạt Mobile đã trở thành đơn vị cung cấp thêm nhiều sản phẩm đến từ thương hiệu Samsung, Xiaomi... Do đó tiếp tục nhận được sự yêu thích và trở thành một trong những cửa hàng điện thoại uy tín Thành phố Hà Nội. 
                Thành Đạt Mobile còn cung cấp nhiều dịch vụ sửa chữa điện thoại chuyên nghiệp uy tín để đáp ứng tất cả nhu cầu khách hàng, ngay cả những khách hàng khó tính nhất.
            </span>
        </div>
    </div>
    <div class="section_content">
        <div class="section_item">
            <div class="section_child">
                <h3>Hàng chính hãng</h3>
                <span>Hiện nay, điện thoại trở thành phương tiện liên lạc không thể thiếu đối với tất cả mọi người.</span>
            </div>
            <div class="section_child">
                <h3>Sản phẩm mới 100%</h3>
                <span>Hiện nay, điện thoại trở thành phương tiện liên lạc không thể thiếu đối với tất cả mọi người.</span>
            </div>
            <div class="section_child">
                <h3>Bảo hành 12 tháng</h3>
                <span>Hiện nay, điện thoại trở thành phương tiện liên lạc không thể thiếu đối với tất cả mọi người.</span>
            </div>
        </div>
        <div class="section_item">
            <div class="section_child">
                <h3>Đổi trả trong vòng 7 ngày</h3>
                <span>Hiện nay, điện thoại trở thành phương tiện liên lạc không thể thiếu đối với tất cả mọi người.</span>
            </div>
            <div class="section_child">
                <h3>Miễn phí giao hàng</h3>
                <span>Hiện nay, điện thoại trở thành phương tiện liên lạc không thể thiếu đối với tất cả mọi người.</span>
            </div>
            <div class="section_child">
                <h3>Giá cả hợp lý</h3>
                <span>Hiện nay, điện thoại trở thành phương tiện liên lạc không thể thiếu đối với tất cả mọi người.</span>
            </div>
        </div>
    </div>
    <div class="section_img">
        <img src="images/section_img.jpg" alt="photo" width="100%" />
    </div>

    <div class="degi">

    </div>

    <div class="footer">
		<div class="Thongtinlienhe">
			<h1>Thông Tin Liên Hệ</h1>
			<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội</p>
			<p>SĐT: 1910192092</p>
			<p>Gmail: abc1234@gmail.com</p>
		</div>
		<div class="Lienket">
			<h1>Liên Kết</h1>
			<ul>
				<li><a href="gioithieu.aspx">Giới thiệu</a></li>
				<li><a href="Lienhe.aspx">Liên hệ</a></li>
			</ul>
		</div>
		<div class="Lienket">
			<h1>Hỗ Trợ</h1>
			<ul>
				<li><a href="#">Hướng dẫn mua hàng</a></li>
				<li><a href="#">Hướng dẫn thanh toán</a></li>
				<li><a href="#">Chính sách bảo hành</a></li>
				<li><a href="#">Chính sách đổi trả</a></li>
				<li><a href="#">Tư vấn khách hàng</a></li>
			</ul>
		</div>
	</div>
    <script src="js/Giohang.js"></script>
</body>
</html>
