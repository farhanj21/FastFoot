using System;
using System.Data; 
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace YourNamespace
{
    public partial class StandingsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStandingsData();
            }
        }

        protected void ddlLeagues_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindStandingsData();
        }

        private void BindStandingsData()
        {
            if (ddlLeagues.SelectedIndex > 0)
            {
                string league = ddlLeagues.SelectedValue;

                DataTable dtStandings = GetStandingsData(league);

                gvStandings.DataSource = dtStandings;
                gvStandings.DataBind();
            }
            else
            {
                gvStandings.DataSource = null;
                gvStandings.DataBind();
            }
        }

        private DataTable GetStandingsData(string league)
        {
            DataTable dtStandings = new DataTable();

            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT S.position, S.team_name, S.matches_played, S.wins, S.losses, S.draws, S.goal_difference, S.points, T.logo_url
                    FROM Standings S
                    INNER JOIN Teams T ON S.team_name = T.team_name
                    WHERE S.league_name = @League
                ORDER BY S.position ASC";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@League", league);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dtStandings);
                }
            }

            return dtStandings;
        }

    }
}




