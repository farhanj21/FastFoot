using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

namespace testfut
{
    public partial class UpcomingFixtures : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["PreferredLeague"] != null)
                {
                    string preferredLeague = Session["PreferredLeague"].ToString();
                    string LeagueID = getAPIID(preferredLeague);
                    ddlLeagues.SelectedValue = LeagueID;

                    string selectedLeagueId = ddlLeagues.SelectedValue;

                    widgetDiv.Controls.Clear();
                    widgetDiv.Controls.Add(new LiteralControl(@"
                    <div id='wg-api-football-games'
                        data-host='api-football-v1.p.rapidapi.com'
                        data-key='9d56b6af3cmsh4b94c84438395e6p17117fjsnd7be30edd88a'
                        data-date=''
                        data-league='" + selectedLeagueId + @"'
                        data-season='2022'
                        data-theme='false'
                        data-refresh='15'
                        data-show-toolbar='true'
                        data-show-errors='false'
                        data-show-logos='true'
                        data-modal-game='true'
                        data-modal-standings='true'
                        data-modal-show-logos='true'>
                    </div>
                    <script type='module' src='https://widgets.api-sports.io/2.0.3/widgets.js'></script>
                    "));
                }
            }
        }
        protected void ddlLeagues_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedLeagueId = ddlLeagues.SelectedValue;

            widgetDiv.Controls.Clear();
            widgetDiv.Controls.Add(new LiteralControl(@"
            <div id='wg-api-football-games'
                data-host='api-football-v1.p.rapidapi.com'
                data-key='9d56b6af3cmsh4b94c84438395e6p17117fjsnd7be30edd88a'
                data-date=''
                data-league='" + selectedLeagueId + @"'
                data-season='2022'
                data-theme='false'
                data-refresh='15'
                data-show-toolbar='true'
                data-show-errors='false'
                data-show-logos='true'
                data-modal-game='true'
                data-modal-standings='true'
                data-modal-show-logos='true'>
            </div>
            <script type='module' src='https://widgets.api-sports.io/2.0.3/widgets.js'></script>
            "));
        }

        private string getAPIID(string leaguename)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT api_id FROM idAPI WHERE league_name = @LeagueName";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@LeagueName", leaguename);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string leagueID = reader["api_id"].ToString();
                            return leagueID;
                        }
                        else
                            return null;
                    }
                }
            }
        }

    }
}