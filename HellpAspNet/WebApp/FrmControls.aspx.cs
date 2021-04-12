using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class FrmControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LsbHobby.Items.Add("농구");
            LsbHobby.Items.Add("배구");

            CboPhoneNum.Items.Add("010-1234-5678");

            if (!Page.IsPostBack)
            {
                CtlHidden.Value = DateTime.Now.ToString();
            }
        }

        protected void BtnChange_Click(object sender, EventArgs e)
        {
            ImgChange.ImageUrl = $"~/images/KakaoTalk_20210412_102604119_01.png";

        }

        protected void BtnOK_Click(object sender, EventArgs e)
        {
            Response.Write(CtlHidden.Value);
        }
    }
}