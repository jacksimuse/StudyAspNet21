using System;
using System.Web.UI;

namespace WebApp
{
    public partial class FrmResponseWrite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("안녕하세요.<br />");
        }

        protected void BtnMsg_Click(object sender, EventArgs e)
        {
            Response.Write("반갑습니다");
        }

        protected void BtnJs_Click(object sender, EventArgs e)
        {
            string strScript = @"<script language='javascript'>
                                    window.alert('안녕하세요!');
                                </script>";
            Response.Write(strScript);
        }

        protected void BtnLink_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.naver.com");
        }
    }
}