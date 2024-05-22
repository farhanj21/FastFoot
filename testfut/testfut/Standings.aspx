<%@ Page Title="Standings" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Standings.aspx.cs" Inherits="YourNamespace.StandingsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-white fw-bold form-control-lg">
            <img src="https://www.freepnglogos.com/uploads/trophy-png/gold-trophy-shiny-png-0.png" alt="Trophy" id="Logo">
            STANDINGS</p>
        
    <div class="allContent">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <asp:DropDownList ID="ddlLeagues" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLeagues_SelectedIndexChanged" class="standingsOfLeague">
                    <asp:ListItem class="dropdownLeague">Select a league</asp:ListItem>
                    <asp:ListItem Value="Ligue 1" class="dropdownLeague">Ligue 1</asp:ListItem>
                    <asp:ListItem Value="Bundesliga" class="dropdownLeague">Bundesliga</asp:ListItem>
                    <asp:ListItem Value="Serie A" class="dropdownLeague">Serie A</asp:ListItem>
                    <asp:ListItem Value="La Liga" class="dropdownLeague">La Liga</asp:ListItem>
                    <asp:ListItem Value="Premier League" class="dropdownLeague">Premier League</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:GridView class="table table-dark table-striped" ID="gvStandings" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="position" HeaderText="Position" />
                        <asp:TemplateField HeaderText="Team Name">
                            <ItemTemplate>
                                <asp:HyperLink class="text-reset text-decoration-none" ID="hlTeamName" runat="server" NavigateUrl='<%# "TeamInfo.aspx?team_name=" + Server.UrlEncode(Eval("team_name").ToString()) %>'> 
                                    <img src='<%# Eval("logo_url") %>' alt='logo' style='height:30px; width:30px;' /> <%#  Eval("team_name") %>
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="matches_played" HeaderText="Matches Played" />
                        <asp:BoundField DataField="wins" HeaderText="Wins" />
                        <asp:BoundField DataField="losses" HeaderText="Losses" />
                        <asp:BoundField DataField="draws" HeaderText="Draws" />
                        <asp:BoundField DataField="goal_difference" HeaderText="Goal Difference" />
                        <asp:BoundField DataField="points" HeaderText="Points" />
                    </Columns>
                </asp:GridView>
            </div>
        </form>
    </div>

</asp:Content>
