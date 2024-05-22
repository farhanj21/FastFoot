using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Data; 
using System.Web.UI.WebControls;

namespace testfut
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            string user = username.Text;
            string pass = password.Text;
            string pLeague = preferredLeague.SelectedValue;

            string passwordHash = HashPassword(pass);

            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", user);

                    int count = (int)command.ExecuteScalar();
                    if(user == "")
                    {
                        errorMessage.Visible = true;
                        errorMessage.Text = "Please enter a username.";
                    }
                    else if (count > 0)
                    {
                        errorMessage.Visible = true;
                        errorMessage.Text = "Username already exists. Please choose a different username.";
                    }
                    else if (pass == "")
                    {
                        errorMessage.Visible = true;
                        errorMessage.Text = "Please enter a password.";
                    }
                    else if(pLeague == "")
                    {
                        errorMessage.Visible = true;
                        errorMessage.Text = "Please chose a league of your choice.";
                    }
                    else
                    {
                        query = "INSERT INTO Users (Username, PasswordHash, PreferredLeague) VALUES (@Username, @PasswordHash, @PreferredLeague)";

                        using (SqlCommand insertCommand = new SqlCommand(query, connection))
                        {
                            insertCommand.Parameters.AddWithValue("@Username", user);
                            insertCommand.Parameters.AddWithValue("@PasswordHash", passwordHash);
                            insertCommand.Parameters.AddWithValue("@PreferredLeague", pLeague);

                            insertCommand.ExecuteNonQuery();
                        }

                        Response.Redirect("Login.aspx");
                    }
                }
            }
         
        }

        public string HashPassword(string password)
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

    }
}