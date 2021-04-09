using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class FrmAppSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["Cnt"] == null)
            {
                Application.Lock();
                Application["Cnt"] = 1;
                Application.UnLock();
            } else
            {
                Application["Cnt"] = (int)Application["Cnt"] + 1;
            }

            // Session
            if (Session["Cnt"] == null)
            {
                Session["Cnt"] = 1;
            }
            else
            {
                Session["Cnt"] = (int)Session["Cnt"] + 1;
            }

            // 출력
            LblApp.Text = $"{Application["Cnt"]}";
            LblSession.Text = $"{Session["Cnt"]}";
            LblSessionID.Text = Session.SessionID;
            LblTimeout.Text = $"{Session.Timeout}";
        }
    }
}