using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace StateMngWebApp
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Now"] = DateTime.Now;
            Application["Visit"] = 0; // 접속자수
        }
        protected void Application_End(object sender, EventArgs e)
        {
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["Now"] = DateTime.Now;
            Application.Lock();
            Application["Visit"] = Convert.ToInt32(Application["Visit"]) + 1;
            Application.UnLock();
        }
        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["Visit"] = Convert.ToInt32(Application["Visit"]) - 1;
            Application.UnLock();
        }
    }
}