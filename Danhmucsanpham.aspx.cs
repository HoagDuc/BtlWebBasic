using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BtlWebBasic
{
    public partial class Danhmucsanpham : System.Web.UI.Page
    {
        protected void Page_Load(object sender,EventArgs e)
        {
            if (Session["username"]!=null)
            {
                login.InnerHtml="<p class='user'>Xin chào "+Session["username"].ToString()+" | "+"</p>"+
                                  "<a href = 'Dangxuat.aspx'> Đăng xuất </a>";

            }
            List<Product> ProductList = (List<Product>)Application["productList"];
            List<Product> dt = new List<Product>();
            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id=="1"||id=="2"||id=="2"||id=="3"||id=="4"||id=="10"||id=="11"||id=="12"||id=="13"||id=="21"||id=="22"||id=="23"||id=="24"||id=="25"||id=="26"||id=="27"||
                    id=="31"||id=="32"||id=="33"||id=="34"||id=="35"||id=="36"||id=="37"||id=="41"||id=="42"||id=="43"||id=="44"||id=="45"||id=="46"||id=="47"||id=="51"||id=="52"||id=="53"||id=="54"||id=="55"||id=="56"||id=="57")
                {
                    dt.Add(product);
                }
            }
            dienthoai.DataSource=dt;
            dienthoai.DataBind();
        }
    }
}