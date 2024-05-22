<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="TopAssists.aspx.cs" Inherits="testfut.TopAssists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-white fw-bold form-control-lg">
        <img src="https://www.freepnglogos.com/uploads/trophy-png/gold-trophy-shiny-png-0.png" alt="Trophy" id="Logo">
        Top Scorers
    </p>
    <div class="allContent">
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <asp:DropDownList ID="ddlLeagues" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLeagues_SelectedIndexChanged" class="standingsOfLeague">
                    <asp:ListItem Value="" class="dropdownLeague">Select League</asp:ListItem>
                    <asp:ListItem Value="Ligue 1" class="dropdownLeague">Ligue 1</asp:ListItem>
                    <asp:ListItem Value="Bundesliga" class="dropdownLeague">Bundesliga</asp:ListItem>
                    <asp:ListItem Value="Serie A" class="dropdownLeague">Serie A</asp:ListItem>
                    <asp:ListItem Value="La Liga" class="dropdownLeague">La Liga</asp:ListItem>
                    <asp:ListItem Value="Premier League" class="dropdownLeague">Premier League</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:GridView class="table table-dark table-striped" ID="gvTopScorers" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Player Name">
                            <ItemTemplate>
                                <asp:HyperLink class="text-reset text-decoration-none" ID="hlPlayer" runat="server"
                                    NavigateUrl='<%# "PlayerStats.aspx?PlayerID=" + Eval("PlayerID") + "&FullName=" + Server.UrlEncode(Eval("FullName").ToString()) %>'
                                    Text='<%# Eval("FullName") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Team Name">
                            <ItemTemplate>
                                <asp:HyperLink class="text-reset text-decoration-none" ID="hlTeamName" runat="server" NavigateUrl='<%# "TeamInfo.aspx?team_name=" + Server.UrlEncode(Eval("team_name").ToString()) %>'> 
                                    <img src='<%# Eval("logo_url") %>' alt='logo' style='height:30px; width:30px;' /> <%#  Eval("team_name") %>
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="assists" HeaderText="Assists" />
                    </Columns>
                </asp:GridView>
            </div>
        </form>
    </div>
</asp:Content>
