<%@ Page Title="Player Info" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="PlayerStats.aspx.cs" Inherits="testfut.PlayerStats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="allContent">
        <form id="form1" runat="server">
            <div>
                <h1 class="text-center mb-3">
                    <asp:Image ID="playerImg" runat="server" Width="70px" Height="70px" />
                    <asp:Label CssClass="THeading" ID="playerName" runat="server"></asp:Label>
                </h1>
                <h2 class="text-center">
                    <asp:Image ID="teamImg" runat="server" Width="70px" Height="70px" />
                    <asp:Label CssClass="THeading" ID="team" runat="server"></asp:Label>
                </h2>
                <br />
                <br />
                <asp:Repeater ID="rptPlayerStats" runat="server">
                    <ItemTemplate>
                        <div class="text-white fw-bold form-control-lg p-0">
                            <h2 class="THeading text-center">Season: <%# Eval("season") %></h2>
                            <br />
                            <div class="container px-4 text-center">
                                <div class="row gx-5">
                                    <div class="col">

                                        <div class="p-3 bg-dark bg-gradient shadow-lg p-3 mb-5 rounded">
                                            <p>Games Played: <%# Eval("games_played") %></p>
                                            <p>Rating: <%# Eval("rating") %></p>
                                            <p>Goals: <%# Eval("goals") %></p>
                                            <p>Assists: <%# Eval("assists") %></p>
                                            <p>Saves: <%# Eval("saves") %></p>
                                            <p>Passes: <%# Eval("total_passes") %></p>

                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="p-3 bg-dark bg-gradient shadow-lg p-3 mb-5 rounded">
                                            <p>Pass Accuracy: <%# Eval("pass_accuracy") %></p>
                                            <p>Dribbles: <%# Eval("dribbles") %></p>
                                            <p>Tackles: <%# Eval("tackles") %></p>
                                            <p>Yellow Cards: <%# Eval("yellow_cards") %></p>
                                            <p>Red Cards: <%# Eval("red_cards") %></p>
                                            <p>Duels: <%# Eval("duels") %></p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </form>
    </div>
</asp:Content>
