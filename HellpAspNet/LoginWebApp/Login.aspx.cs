using LoginWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginWebApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            var repo = new Repository();
            if (repo.IsCorrectUser(TxtUserID.Text, TxtPassword.Text))
            {
                // 성공
                // 인증부여
                if (!string.IsNullOrEmpty(Request["ReturnUrl"]))
                {
                    //FormsAuthentication.RedirectFromLoginPage(TxtUserID.Text, false);
                    FormsAuthentication.SetAuthCookie(TxtUserID.Text, false); // 인증된 사용자아이디를 쿠키
                    Response.Redirect("~/Welcome.aspx");
                }
                //else
                //{
                //    
                //}
            }
            else
            {
                // 실패
                Response.Write("<script>alsert('잘못된 사용자입니다!');</script>");
                Response.End();
            }
        }
    }
}