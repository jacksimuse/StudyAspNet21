using LoginWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginWebApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            var repo = new Repository();
            var result = repo.AddUser(TxtUserID.Text, TxtPassword.Text);

            if (result == 1)
            {
                var strScript = @"<script>alert('가입완료');location.href='Default.aspx';</script>";
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alertJS", strScript);
                //Response.Redirect("Default.aspx");
            }
        }
    }
}