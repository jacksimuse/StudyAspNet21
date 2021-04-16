using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetNote.Content
{
    public partial class SearchControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string strQuery = $"BoardList.aspx?SearchField={SearchField.SelectedItem.Value}&SearchQuery={SearchQuery.Text}";
            Response.Redirect(strQuery);
        }
    }
}