using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Helpers;

namespace DotNetNote
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(StringLibrary.CutString("안녕하세요. 부경대학교입니다.", 10));
        }
    }
}