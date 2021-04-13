using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateMngWebApp
{
    public partial class FrmCount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblVisit.Text = Application["Visit"].ToString();
        }
    }
}