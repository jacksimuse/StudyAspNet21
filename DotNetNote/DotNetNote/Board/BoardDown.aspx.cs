using DotNetNote.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetNote.Board
{
    public partial class BoardDown : System.Web.UI.Page
    {
        private string fileName = "";
        private string dir = "";

        private DbRepository _repo;

        public BoardDown()
        {
            _repo = new DbRepository();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            fileName = _repo.GetFileNameById(Convert.ToInt32(Request["Id"]));
            dir = Server.MapPath("../Files");

            if (fileName == null)
            {
                Response.Clear();
                Response.End();
            }
            else
            {
                _repo.UpdateDownCountById(Convert.ToInt32(Request["Id"])); // 다운로드 카운트 증가

                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AddHeader("Content-Disposition", $"attachment;filename={Server.UrlPathEncode(fileName)}");
                Response.WriteFile($"{dir}\\{fileName}");
                Response.End();
            }
        }
    }
}