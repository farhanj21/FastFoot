using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public class Player
{
    public string FullName { get; set; }
    public int PlayerID { get; set; }
}


namespace testfut
{
    public partial class TeamInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTeamInfoData();
            }
        }

        private void BindTeamInfoData()
        {
            string team_name = Request.QueryString["team_name"];
            lblTeamName.Text = team_name;
            string league_name = GetLeagueName();
            lblLeague.Text = league_name;
            string position = GetPosition(team_name, league_name);
            lblPosition.Text = position;
            string logoUrl = GetTeamLogoUrl(team_name);
            teamLogo.ImageUrl = logoUrl;

            List<Player> goalkeepers = GetPlayersByPosition(team_name, "Goalkeeper");
            gvGoalKeeper.DataSource = goalkeepers;
            gvGoalKeeper.DataBind();

            List<Player> defenders = GetPlayersByPosition(team_name, "Defender");
            gvDefenders.DataSource = defenders;
            gvDefenders.DataBind();

            List<Player> attackers = GetPlayersByPosition(team_name, "Attacker");
            gvAttackers.DataSource = attackers;
            gvAttackers.DataBind();

            List<Player> midfielders = GetPlayersByPosition(team_name, "Midfielder");
            gvMidfielders.DataSource = midfielders;
            gvMidfielders.DataBind();
        }
        private string GetLeagueName()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            string leagueName = "";
            string teamName = Request.QueryString["team_name"];

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"SELECT League_Name
                         FROM Teams
                         WHERE team_name = @TeamName";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@TeamName", teamName);

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        leagueName = reader["league_name"].ToString();
                    }
                }
            }

            return leagueName;
        }

        private string GetPosition(string teamName, string leagueName)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"select position
                                from Standings
                                where team_name = @team_name AND league_name = @league_name";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@team_name", teamName);
                    cmd.Parameters.AddWithValue("@league_name", leagueName);

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        leagueName = reader["position"].ToString();
                    }
                }
            }

            return leagueName;
        }

        private List<Player> GetPlayersByPosition(string teamName, string position)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            List<Player> players = new List<Player>();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"SELECT id, first_name, last_name
                         FROM Players
                         WHERE team_name = @TeamName AND position = @Position";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@TeamName", teamName);
                    cmd.Parameters.AddWithValue("@Position", position);

                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string firstName = reader["first_name"].ToString();
                        string lastName = reader["last_name"].ToString();
                        int playerID = Convert.ToInt32(reader["id"]);
                        players.Add(new Player { FullName = $"{firstName} {lastName}", PlayerID = playerID });
                    }
                }
            }

            return players;
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






    }
}