<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xiaomi.aspx.cs" Inherits="BtlWebBasic.Xiaomi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset ="utf-8" />
    <title>Xiaomi</title>
    <link href="Style/Danhmucsanpham.css" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
	<div class="breadscrum">
        <div class="abc">
            <a href="Trangchu.aspx"><strong>Trang chủ</strong></a> / <a href="Danhmucsanpham.aspx"><strong>Danh mục sản phẩm</strong></a> / <a href="Xiaomi.aspx"><strong>Xiaomi</strong></a>
        </div>
    </div>
    <div class="container">
        <div class="sidebar_one">
            <div class="row_1">
                <strong>Danh mục sản phẩm</strong>
                <div class="show">
                    <ul>
                        <li><a href="Iphone.aspx">Iphone</a></li>
                        <li><a href="Samsung.aspx">Samsung</a></li>
                        <li><a href="Oppo.aspx">Oppo</a></li>
                        <li><a href="Xiaomi.aspx">Xiaomi</a></li>
                    </ul>
                </div>
            </div>
            <div class="row_2"></div>
            <div class="row_3"></div>
        </div>
        <div class="sidebar_two">
            <div class="sanpham">
                <asp:ListView ID="dienthoai" runat="server">
                    <ItemTemplate>
                        <a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
                            <div class="sanpham_show">
                                <img src="<%# Eval("Images") %>" alt="ảnh lỗi">
                                <div class="sanpham_gia">
                                    <strong><%# Eval("Name") %></strong>
                                    <p><%# Eval("Price") %> đồng</p>
                                </div>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:ListView>
            </div>
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
	<script src="js/Giohang.js"></script>
</body>
</html>
