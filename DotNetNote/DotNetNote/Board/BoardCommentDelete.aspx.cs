using DotNetNote.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetNote.Board
{
    public partial class BoardCommentDelete : System.Web.UI.Page
    {
        public int BoardId { get; set; }
        public int Id { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["BoardId"] != null && Request["Id"] != null)
            {
                BoardId = Convert.ToInt32(Request["BoardId"]);
                Id = Convert.ToInt32(Request["Id"]);
            }
            else
            {
                Response.End();
            }
        }

        protected void btnCommentDelete_Click(object sender, EventArgs e)
        {
            var repo = new DbRepository();
            if (repo.GetCountBy(BoardId, Id, txtPassword.Text) > 0)
            {
                repo.DeleteNoteComment(BoardId, Id, txtPassword.Text);
                Response.Redirect($"BoardView.aspx?Id={BoardId}");
            }
            else
            {
                lblError.Text = "암호가 틀렸습니다. 다시 입력하세요";
            }
        }
    }
}