using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BtlWebBasic
{
    public class NguoiDung
    {
        public string username;
        public string email;
        public string password;
        public string repassword;
        public string sdt;


        public NguoiDung(string username,string email,string password,string repassword,string sdt)
        {
            this.username=username;
            this.email=email;
            this.password=password;
            this.repassword=repassword;
            this.sdt=sdt;
        }
    }
}