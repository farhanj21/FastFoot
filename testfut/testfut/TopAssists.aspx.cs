using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


public class TopAssist
{
    public string FullName { get; set; }
    public int PlayerID { get; set; }
    public string team_name { get; set; }
    public int assists { get; set; }
    public string logo_url { get; set; }

}


namespace testfut
{
    public partial class TopAssists : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTopAssistsData();
            }
        }

        protected void ddlLeagues_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindTopAssistsData();
        }

        private void BindTopAssistsData()
        {
            if (ddlLeagues.SelectedIndex > 0)
            {
                string selectedLeague = ddlLeagues.SelectedValue;

                List<TopAssist> topassists = new List<TopAssist>();

                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(@"
                    SELECT P.id ,P.first_name, P.last_name, P.team_name, T.logo_url, TA.Assists
                    FROM TopAssists AS TA
                    INNER JOIN Players AS P ON P.id = TA.player_id
                    INNER JOIN Teams AS T ON P.team_name = T.team_name
                    WHERE TA.league_name = @league
                    ORDER BY TA.assists DESC", con))
                    {
                        cmd.Parameters.AddWithValue("@league", selectedLeague);

                        SqlDataReader reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                            string firstName = reader["first_name"].ToString();
                            string lastName = reader["last_name"].ToString();
                            string teamName = reader["team_name"].ToString();
                            int assists = Convert.ToInt32(reader["assists"]);
                            int playerID = Convert.ToInt32(reader["id"]);
                            string teamlogo = reader["logo_url"].ToString();
                            topassists.Add(new TopAssist { FullName = $"{firstName} {lastName}", PlayerID = playerID, team_name = teamName, assists = assists, logo_url = teamlogo });
                        }

                        gvTopScorers.DataSource = topassists;
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