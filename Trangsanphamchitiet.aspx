<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangsanphamchitiet.aspx.cs" Inherits="BtlWebBasic.Trangsanphamchitiet" %>

<!DOCTYPE html>

<aspx xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
	<link rel="stylesheet" href="Style/Trangsanphamchitiet.css" />
    <title>Thành Đạt Mobile</title>
</head>
<body>
	<form id="form1" runat="server">
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
		<div class="container">
			<asp:ListView ID="ListViewProductinformation" runat="server" >
				<ItemTemplate>
					<div class="anh">
						<img src="<%# Eval("Images") %>" title="Thành đẹp trai">
					</div>
					<div class="content">
						<h1 class="header-content"><%# Eval("Name") %></h1>
						<hr width="20px" />
						<p style="font-size:45px;color: #C89979;" class="header-content"><b><%# Eval("Price") %> đồng</b></p>
						<p class="header-content">Độ phân giải màn hình: <%# Eval("Resolution") %></p>
						<p class="header-content">Hệ điều hành: <%# Eval("OS") %></p>
						<p class="header-content">Camera trước: <%# Eval("FrontCam") %></p>
						<p class="header-content">Camera sau: <%# Eval("BackCam") %></p>
						<p class="header-content">RAM: <%# Eval("RAM") %></p>
						<p class="header-content">ROM: <%# Eval("ROM") %></p>
						<p class="header-content">Pin: <%# Eval("Pin") %></p>

				</ItemTemplate>
			</asp:ListView>
				<div class="submit">
					<p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color:red"></p>
					<button type="submit" class="themvaogio" runat="server" id="AddToCartButton1" onserverclick="AddToCartButton" >Thêm vào giỏ hàng</button>
				</div></div>
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
	</form>
	<script src="js/Giohang.js"></script>
</body>
</aspx>
