using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class FrmFileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 캐싱출력
            LblCache.Text = DateTime.Now.ToShortDateString();
        }

        public static string GetCurrentTime(HttpContext context)
        {
            return DateTime.Now.ToLongDateString();
        }
        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            if (CtlUpload.HasFile)
            {
                CtlUpload.SaveAs(Server.MapPath(".") + "\\Files\\" + CtlUpload.FileName); //저장

                LblResult.Text = $"<a href='{"./Files/"}{Server.UrlEncode(CtlUpload.FileName)}'>{Server.UrlEncode(CtlUpload.FileName)}</a>";
            }
        }
    }
}