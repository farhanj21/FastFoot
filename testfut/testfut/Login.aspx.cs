using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Web.UI.WebControls;

namespace testfut
{

    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string username = this.username.Text;
            string password = this.password.Text;

            string passwordHash = HashPassword(password);

            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT PasswordHash FROM Users WHERE Username = @Username";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string storedPasswordHash = reader["PasswordHash"].ToString();

                            if (storedPasswordHash == passwordHash)
                            { 
                                Session["Username"] = username;
                                string userPreferredLeague = GetUserPreferredLeagueFromDB(username);
                                Session["PreferredLeague"] = userPreferredLeague;
                                Response.Redirect("Upcoming.aspx");
                            }
                            else
                            {
                                errorLabel.Visible = true;
                                errorLabel.Text = "Incorrect password.";

                            }
                        }
                        else
                        {
                            errorLabel.Visible = true;
                            errorLabel.Text = "Username not found.";

                        }
                    }
                }
            }
        }

        private string HashPassword(string password)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(password));

                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }

                return builder.ToString();
            }
        }

        private string GetUserPreferredLeagueFromDB(string username)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT PreferredLeague FROM Users WHERE Username = @Username";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string preferredLeague = reader["PreferredLeague"].ToString();
                            return preferredLeague;
                        }
                        else
                            return null;
                    }
                }
            }
        }
    }

}