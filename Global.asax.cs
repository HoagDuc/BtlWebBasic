using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BtlWebBasic
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender,EventArgs e)
        {
            //tk mac dinh
            Application["Users"]=new List<NguoiDung>();
            List<NguoiDung> Users = (List<NguoiDung>)Application["Users"];
            Users.Add(new NguoiDung("thanh","thanh@gmail.com","thanh","thanh","0235472821"));
            Users.Add(new NguoiDung("dat","dat@gmail.com","dat","dat", "0234756228"));
            Users.Add(new NguoiDung("an","an@gmail.com","an","an", "0347237423"));
            Users.Add(new NguoiDung("duc","duc@gmail.com","duc","duc", "0335939002"));

            //sanpham
            Application["ProductList"]=new List<Product>();
            List<Product> ProductList = new List<Product>();
            //san pham ban chay
            ProductList.Add(new Product() { Id="1",Images="../images/product-01.jpg",Name="Samsung Galaxy A73 5G",Price="11990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh"});
            ProductList.Add(new Product() { Id="2",Images="../images/product-02.jpg",Name="iPhone 13 Pro Max 128GB",Price="32390000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="3",Images="../images/product-03.jpg",Name="Oppo Reno6 Z 5G",Price="8490000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="4",Images="../images/product-04.jpg",Name="Xiaomi 11T 5G 256GB",Price="9490000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            /*ProductList.Add(new Product() { Id="5",Images="../images/product-05.jpg",Name="Vivo Y21s 6GB",Price="5.290.000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });*/
            //san pham pho bien
            ProductList.Add(new Product() { Id="10",Images="../images/product-10.jpg",Name="Samsung Galaxy M33 5G",Price="6990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="11",Images="../images/product-11.jpg",Name="Samsung Galaxy A13 6GB",Price="4990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="12",Images="../images/product-12.jpg",Name="Samsung Galaxy A23 6GB",Price="5990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="13",Images="../images/product-13.jpg",Name="Samsung Galaxy A12 6GB",Price="4090000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            /*ProductList.Add(new Product() { Id="14",Images="../images/product-14.jpg",Name="Samsung Galaxy A52s 5G",Price="8.990.000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });*/
            //iphone
            ProductList.Add(new Product() { Id="20",Images="../images/Iphone/iphone-11.jpg",Name="Iphone 11",Price="14490000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="21",Images="../images/Iphone/iphone-13-pro-max-gold.jpg",Name="iPhone 13 pro max gold",Price="32390000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="22",Images="../images/Iphone/iphone-13-pro-max-xanh-la.jpg",Name="iphone 13 pro max xanh lá",Price="31890000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="23",Images="../images/Iphone/iphone-12-pro-max-vang-new.jpg",Name="iphone 12 pro max vàng",Price="29990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="24",Images="../images/Iphone/iphone-13-pro-xanh-la.jpg",Name="iphone 13 pro xanh lá",Price="28390000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="25",Images="../images/Iphone/iphone-13-xanh-la.jpg",Name="iphone 13 xanh lá",Price="24990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="26",Images="../images/Iphone/iphone-12-pro-bac-new.jpg",Name="iphone 12 pro bạc",Price="24590000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="27",Images="../images/Iphone/iphone-13.jpg",Name="iphone 13",Price="22290000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            //samsung
            ProductList.Add(new Product() { Id="30",Images="../images/Samsung/Galaxy-S22-Ultra.jpg",Name="Galaxy S22 Ultra",Price="30990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="31",Images="../images/Samsung/samsung-galaxy-a03.jpg",Name="samsung galaxy a03",Price="2890000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="32",Images="../images/Samsung/samsung-galaxy-a52s-5g.jpg",Name="samsung galaxy A52s 5G",Price="9990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="33",Images="../images/Samsung/samsung-galaxy-z-fold-3-silver.jpg",Name="samsung galaxy z fold 3",Price="35990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="34",Images="../images/Samsung/samsung-galaxy-s21-ultra-bac.jpg",Name="samsung galaxy s21 ultra",Price="25990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="35",Images="../images/Samsung/Galaxy-S22-Black.jpg",Name="Galaxy S22 Black",Price="21990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="36",Images="../images/Samsung/samsung-galaxy-s21-plus.jpg",Name="samsung galaxy s21 plus",Price="20990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="37",Images="../images/Samsung/samsung-galaxy-z-flip-3.jpg",Name="samsung galaxy z flip 3",Price="19990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            //oppo
            ProductList.Add(new Product() { Id="40",Images="../images/Oppo/oppo-reno7-z-5g.jpg",Name="oppo reno7 z 5g",Price="10490000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="41",Images="../images/Oppo/oppo-reno6-5g-black.jpg",Name="oppo reno6 5g black",Price="11990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="42",Images="../images/Oppo/oppo-reno5-5g.jpg",Name="oppo reno5 5G",Price="8990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="43",Images="../images/Oppo/oppo-reno4-pro-trang.jpg",Name="oppo reno4 pro",Price="84990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="44",Images="../images/Oppo/oppo-a74-5g.jpg",Name="oppo a74 5g",Price="6500000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="45",Images="../images/Oppo/OPPO-A76-đen.jpg",Name="OPPO A76",Price="5900000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="46",Images="../images/Oppo/oppo-a55-4g.jpg",Name="oppo a55 4g",Price="4990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="47",Images="../images/Oppo/oppo-a15s.jpg",Name="oppo a15s",Price="39990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            //xiaomi
            ProductList.Add(new Product() { Id="50",Images="../images/Xiaomi/Xiaomi-11T.jpg",Name="Xiaomi 11T",Price="10490000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="51",Images="../images/Xiaomi/xiaomi-redmi-note-11-pro.jpg",Name="xiaomi redmi note 11 pro",Price="11990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="52",Images="../images/Xiaomi/Xiaomi-12-xam.jpg",Name="Xiaomi 12 xam",Price="8990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="53",Images="../images/Xiaomi/xiaomi-11t-pro-5g.jpg",Name="xiaomi 11t pro 5g",Price="84990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="54",Images="../images/Xiaomi/xiaomi-mi-11-lite-4g-blue.jpg",Name="xiaomi mi 11 lite 4g blue",Price="6500000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="55",Images="../images/Xiaomi/xiaomi-redmi-note-10-pro.jpg",Name="xiaomi redmi note 10 pro",Price="5900000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="56",Images="../images/Xiaomi/xiaomi-redmi-note-10s-6gb.jpg",Name="xiaomi redmi note 10s 6gb",Price="4990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });
            ProductList.Add(new Product() { Id="57",Images="../images/Xiaomi/redmi-10-gray.jpg",Name="redmi 10 gray",Price="39990000",Resolution="6.7 inch", OS="Android 12", FrontCam="32MP", BackCam="108MP", RAM="8GB", ROM="128GB", Pin="5000mAh" });

            Application["ProductList"]=ProductList;
        }

        protected void Session_Start(object sender,EventArgs e)
        {
            /**Session["product"] = new List<Product>();**/
            Session["login"]=0;
        }

        protected void Application_BeginRequest(object sender,EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender,EventArgs e)
        {

        }

        protected void Application_Error(object sender,EventArgs e)
        {

        }

        protected void Session_End(object sender,EventArgs e)
        {

        }

        protected void Application_End(object sender,EventArgs e)
        {

        }
    }
}