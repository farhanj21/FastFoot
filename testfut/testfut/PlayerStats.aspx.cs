using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices;

namespace testfut
{
    public partial class PlayerStats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string playerID = Request.QueryString["PlayerID"];
            string fullName = Request.QueryString["FullName"];
            fullName = Server.UrlDecode(fullName);
            playerName.Text = fullName;

            string photoURL = getPlayerImage(playerID);
            playerImg.ImageUrl = photoURL;

            string teamName = getTeam(playerID);
            team.Text = teamName;

            string teamlogo = GetTeamLogoUrl(teamName);
            teamImg.ImageUrl = teamlogo;

            DataTable dtStats = GetPlayerStats(Convert.ToInt32(playerID));
            rptPlayerStats.DataSource = dtStats;
            rptPlayerStats.DataBind();
        }
        private string GetTeamLogoUrl(string teamName)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string logoUrl = "";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"SELECT logo_url
                         FROM Teams
                         WHERE team_name = @TeamName";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@TeamName", teamName);

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        logoUrl = reader["logo_url"].ToString();
                    }
                }
            }

            return logoUrl;
        }

        private string getPlayerImage(string playerID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string photoUrl = "";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"SELECT photo_url
                         FROM Players
                         WHERE id = @PlayerID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@PlayerID", playerID);

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        photoUrl = reader["photo_url"].ToString();
                    }
                }
            }

            return photoUrl;
        }

        private string getTeam(string playerID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string team = "";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"SELECT team_name
                         FROM Players
                         WHERE id = @PlayerID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@PlayerID", playerID);

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        team = reader["team_name"].ToString();
                    }
                }
            }

            return team;
        }

        private DataTable GetPlayerStats(int playerID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            DataTable dtStats = new DataTable();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"SELECT season, games_played, rating, goals, assists, saves, total_passes, 
                                pass_accuracy, dribbles, tackles, yellow_cards, red_cards, duels
                                FROM PlayerStats 
                                WHERE player_id = @PlayerID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@PlayerID", playerID);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dtStats);
                }
            }

            return dtStats;
        }

    }
}