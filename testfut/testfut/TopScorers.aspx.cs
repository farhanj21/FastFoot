using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;



public class TopScorer
{
    public string FullName { get; set; }
    public int PlayerID { get; set; }
    public string team_name { get; set; }
    public int goals { get; set; }
    public string logo_url { get; set; }

}

namespace testfut
{
    public partial class TopScorers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTopScorersData();
            }
        }

        protected void ddlLeagues_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindTopScorersData();
        }

        private void BindTopScorersData()
        {
            if (ddlLeagues.SelectedIndex > 0)
            {
                string selectedLeague = ddlLeagues.SelectedValue;

                List<TopScorer> topscorers = new List<TopScorer>();

                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(@"
                    SELECT P.id ,P.first_name, P.last_name, P.team_name, T.logo_url, TS.goals
                    FROM TopScorers AS TS
                    INNER JOIN Players AS P ON P.id = TS.player_id
                    INNER JOIN Teams AS T ON P.team_name = T.team_name
                    WHERE TS.league_name = @league
                    ORDER BY TS.goals DESC
                    ", con))
                    {
                        cmd.Parameters.AddWithValue("@league", selectedLeague);

                        SqlDataReader reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            string firstName = reader["first_name"].ToString();
                            string lastName = reader["last_name"].ToString();
                            string teamName = reader["team_name"].ToString();
                            int goals = Convert.ToInt32(reader["goals"]);
                            int playerID = Convert.ToInt32(reader["id"]);
                            string teamlogo = reader["logo_url"].ToString();
                            topscorers.Add(new TopScorer { FullName = $"{firstName} {lastName}", PlayerID = playerID, team_name = teamName, goals = goals, logo_url= teamlogo});
                        }

                        gvTopScorers.DataSource = topscorers;
                        gvTopScorers.DataBind();
                    }
                }
            }
            else
            {
                gvTopScorers.DataSource = null;
                gvTopScorers.DataBind();
            }
        }

    }
}