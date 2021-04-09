using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class FrmServer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblServerPath.Text = Server.MapPath("."); // 페이지 경로
            LblRequestPath.Text = Request.ServerVariables["SCRIPT_NAME"]; // URL
        }
    }
}