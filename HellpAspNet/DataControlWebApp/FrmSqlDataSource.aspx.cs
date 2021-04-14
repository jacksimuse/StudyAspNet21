using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataControlWebApp
{
    public partial class FrmSqlDataSource : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Chart1.Series[0].Points.AddXY("국어", 80);
            Chart1.Series[0].Points.AddXY("영어", 10);
            Chart1.Series[0].Points.AddXY("수학", 40);
        }
    }
}