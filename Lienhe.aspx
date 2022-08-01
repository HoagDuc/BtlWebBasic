<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lienhe.aspx.cs" Inherits="BtlWebBasic.Lienhe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Liên hệ</title>
    <link href="Style/Lienhe.css" rel="stylesheet" />
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
    <form method="get" action="#">
        <div class="content">
            <div class="auth">
                <div class="auth__header">
                    <h2>Gửi ý kiến phản hồi</h2>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="username">Tên của bạn</label>
                        <input type="text" id="usernameL" />
                        <p>Error message</p>
                    </div>
                    <div class="form-control">
                        <label for="Email">Email</label>
                        <input type="email" id="Email" />
                        <p>Error message</p>
                    </div>
                    <div class="form-control">
                        <label for="Review">Ý kiến của bạn</label>
                        <textarea name="Review" id="Review" cols="5"></textarea>
                        <p>Error message</p>
                    </div>
                    <input type="submit" name="submit" class="auth_btn" id="btnLogin" value="Gửi phản hồi" />
                </div>
            </div>
        </div>
    </form>


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
	<script src="js/Giohang.js">
    </script>
</body>
</html>
