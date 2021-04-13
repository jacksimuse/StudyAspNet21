using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBHandlingWebApp
{
    public partial class FrmMemoList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var connString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;

            using (var conn = new SqlConnection(connString))
            {
                if (conn.State == ConnectionState.Closed) conn.Open();

                SqlCommand cmd = new SqlCommand("ListMemo", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds, "Memos");

                GrvMemoList.DataSource = ds;
                GrvMemoList.DataBind();
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            var connString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;

            using (var conn = new SqlConnection(connString))
            {
                if (conn.State == ConnectionState.Closed) conn.Open();

                SqlCommand cmd = new SqlCommand("SearchMemo", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@SearchField", CboSearch.SelectedValue); // Name, Title
                cmd.Parameters.AddWithValue("@SearchQuery", TxtSearch.Text.Replace("--",""));
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds, "Memos");

                GrvMemoList.DataSource = ds;
                GrvMemoList.DataBind();
            }
        }
    }
}