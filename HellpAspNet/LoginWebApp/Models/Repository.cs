using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace LoginWebApp.Models
{
    public class Repository
    {
        private SqlConnection conn;

        public Repository()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString);
        }

        public int AddUser(string userId, string password)
        {
            SqlCommand cmd = new SqlCommand("WriteUsers", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserID", userId);
            cmd.Parameters.AddWithValue("@Password", password);

            conn.Open();
            var result = cmd.ExecuteNonQuery();
            conn.Close();

            return result; // 0 or 1
        }

        internal bool IsCorrectUser(string userId, string password)
        {
            bool result = false;

            SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE UserID = @UserID AND Password= @Password", conn);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Parameters.AddWithValue("@UserId", userId);
            cmd.Parameters.AddWithValue("@Password", password);

            conn.Open();
            var dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                result = true;
            }
            dr.Close();
            conn.Close();

            return result;
        }

        public User GetUserByUserId(string userId)
        {
            var u = new User();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Users WHERE UserID = @UserID", conn);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Parameters.AddWithValue("@UserID", userId);

            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                u.UID = Convert.ToInt32(reader["UID"]);
                u.UserID = reader["UserID"].ToString();
                u.Password = reader["Password"].ToString();
            }
            conn.Close();
            return u;
        }
    }
}
