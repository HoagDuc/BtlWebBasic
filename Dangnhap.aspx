<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="BtlWebBasic.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Đăng nhập</title>
    <link href="Style/Dangnhap.css" rel="stylesheet" />
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
    <div class="content">

            <div id="login-form" class="auth" >
                <form action="Dangnhap.aspx" method="post" runat="server">
                <div class="auth__header">
                    <h2>Đăng nhập</h2>
                    <a href="Dangky.aspx">Đăng ký</a>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="usernameL" placeholder="Nhập tên đăng nhập" name="usernameL" />
                    </div>
                    <div class="form-control">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="passwordL" placeholder="Nhập mật khẩu" name="passwordL" />
                    </div>
                    <p runat="server" id="errorL" style=" color:red"></p>
                    <button class="auth_btn" id="btnLogin" runat="server">Đăng nhập</button>
                </div>
                </form>
            </div>
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
<script src="js/Dangnhap.js"></script>
</body>
</html>
