using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateMngWebApp
{
    public partial class FrmStateShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtApplication.Text = Application["Now"].ToString(); // $"{}"
            TxtSession.Text = Session["Now"].ToString();

            if (Cache["Now"] != null)
                TxtCache.Text = Cache["Now"].ToString();

            if (Request.Cookies["UserID"] != null)
                TxtCookies.Text = Server.UrlDecode(Request.Cookies["UserID"].Value);

            if (ViewState["Now"] != null)
                TxtViewState.Text = ViewState["Now"].ToString();

            LblSiteName.Text = WebConfigurationManager.AppSettings["SITE_NAME"].ToString();
            LblConnectionString.Text = WebConfigurationManager.ConnectionStrings["Local_Connstring"].ConnectionString;
        }
    }
}