<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="BtlWebBasic.Trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset ="utf-8" />
    <title>Trang chủ</title>
    <link href="Style/trangchu.css" rel="stylesheet" />
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

	<div class="banner">
		<img id="img" src="images/banner-1.jpg" />
	</div>
	
	<div class="phone">
		<div class="left">
			<div class="ngheo">
				<h2>Android</h2>
				<h1>Samsung</h1>
			</div>
		</div>
		<div class="right">
			<div class="giau">
				<h2>IOS</h2>
				<h1>Apple</h1>
			</div>
		</div>
	</div>
	<h1 class="h1">Sản phẩm bán chạy</h1>
	<div class="sanpham">
		<asp:ListView ID="sanphambanchay" runat="server">
			<ItemTemplate>
				<div class="sanphambanchay">
				<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
					<img id="anh1" width="200" height="80" src="<%# Eval("Images") %>" title="Thành đẹp trai">
					<div class="sanphambanchay_gia" id="sanpham1">
						<strong id="ten1"><%# Eval("Name") %></strong>
						<p id="gia1"><%# Eval("Price") %> đồng</p>
					</div>
				</a>
				</div>
			</ItemTemplate>
		</asp:ListView>
	</div>
	<h1 class="h1">Sản phẩm phổ biến</h1>
	<div class="sanpham2">
		<asp:ListView ID="sanphamphobien" runat="server">
			<ItemTemplate>
				<div class="sanphamphobien">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh2" width="200" height="80" src="<%# Eval("Images") %>" title="Thành đẹp trai">
						<div class="sanphamphobien_gia" id="sanpham2">
							<strong id="ten2"><%# Eval("Name") %></strong>
							<p id="gia2"><%# Eval("Price") %> đồng</p>
						</div>
					</a>
				</div>
			</ItemTemplate>
		</asp:ListView>
	</div>
	<h1 class="h1">24h công nghệ</h1>
	<div class="phonenews">
		<div class="tintuc">
			<a href="#">
				<img src="images/tintuc1.jpg" title="Thành đẹp trai" />
				<h5>Realme GT Neo3T lộ sạch cấu hình với chip Snapdragon 8 series, RAM...</h5>
			</a>
		</div>
		<div class="tintuc">
			<a href="#">
				<img src="images/tintuc2.jpg" title="Thành đẹp trai" />
				<h5>Tuần lễ Samsung: Đâu là chiếc điện thoại Galaxy sale sốc nhất? Bật mí...</h5>
			</a>	
		</div>
		<div class="tintuc">
			<a href="#">
				<img src="images/tintuc3.jpg" title="Thành đẹp trai" />
				<h5>Xiaomi công bố danh sách điện thoại được cập nhật MIUI 13 trên toàn cầu đợt 2, vào xem có của bạn không?...</h5>
			</a>	
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
	<script>
        var i = 1;
		function chuyenhinh() {
            var hinh = ["images/banner-1.jpg", "images/banner-2.jpg"];
            document.getElementById('img').src = hinh[i];
            i++;
            if (i > 1) {
                i = 0;
            }
            setTimeout(chuyenhinh, 3*1000);
		}
        chuyenhinh()
		function responsive()
		{
			var x = document.getElementById("header-bot");
			if (x.className === "header_bot"){
				x.className += "responsive";
			}
			else {
				x.className = "header_bot";
            }
		}
    </script>
</body>
</html>
