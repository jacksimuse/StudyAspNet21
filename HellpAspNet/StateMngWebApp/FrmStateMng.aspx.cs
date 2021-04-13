using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateMngWebApp
{
    public partial class FrmStateMng : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ( !Page.IsPostBack) // 최초로드면
            {
                TxtApplication.Text = Application["Now"].ToString(); // $"{}"
                TxtSession.Text = Session["Now"].ToString();

                if (Cache["Now"] != null)
                    TxtCache.Text = Cache["Now"].ToString();

                if (Request.Cookies["Now"] != null)
                    TxtCookies.Text = Server.UrlDecode(Request.Cookies["Now"].Value);

                if (ViewState["Now"] != null)
                    TxtViewState.Text = ViewState["Now"].ToString();
            }
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            Application["Now"] = TxtApplication.Text;
            Session["Now"] = TxtSession.Text;
            Cache["Now"] = TxtCache.Text;
            Response.Cookies["Now"].Value = Server.UrlEncode(TxtCookies.Text);
            ViewState["Now"] = TxtViewState.Text;
            Response.Redirect("FrmStateShow.aspx");
        }
    }
}