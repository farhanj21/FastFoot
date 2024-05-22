<%@ Page Title="Team Info" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TeamInfo.aspx.cs" Inherits="testfut.TeamInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="allContent">
        <form id="form1" runat="server">
            <div>
                <h1>
                    <asp:Image ID="teamLogo" runat="server" Width="70px" Height="70px" />
                    <asp:Label CssClass="THeading" ID="lblTeamName" runat="server" Text="Team Name"></asp:Label>
                </h1>

                <h2 class="text-white fw-bold form-control-lg">League:
                    <asp:Label ID="lblLeague" runat="server"></asp:Label></h2>
                <h3 class="text-white fw-bold form-control-lg">Position:
                    <asp:Label ID="lblPosition" runat="server"></asp:Label></h3>
                <div class="container text-center">
                    <div class="row row-cols-4">
                        <div class="col">
                            <h3 class="text-white fw-bold form-control-lg">Goalkeepers</h3>
                            <asp:GridView class="table table-dark table-striped" ID="gvGoalKeeper" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Player Name">
                                        <ItemTemplate>
                                            <asp:HyperLink class="text-reset text-decoration-none" ID="hlPlayer" runat="server"
                                                NavigateUrl='<%# "PlayerStats.aspx?PlayerID=" + Eval("PlayerID") + "&FullName=" + Server.UrlEncode(Eval("FullName").ToString()) %>'
                                                Text='<%# Eval("FullName") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <div class="col">
                            <h3 class="text-white fw-bold form-control-lg">Defenders</h3>
                            <asp:GridView class="table table-dark table-striped" ID="gvDefenders" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Player Name">
                                        <ItemTemplate>
                                            <asp:HyperLink class="text-reset text-decoration-none" ID="hlPlayer" runat="server"
                                                NavigateUrl='<%# "PlayerStats.aspx?PlayerID=" + Eval("PlayerID") + "&FullName=" + Server.UrlEncode(Eval("FullName").ToString()) %>'
                                                Text='<%# Eval("FullName") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <div class="col">
                            <h3 class="text-white fw-bold form-control-lg">Midfielders</h3>
                            <asp:GridView class="table table-dark table-striped" ID="gvMidfielders" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Player Name">
                                        <ItemTemplate>
                                            <asp:HyperLink class="text-reset text-decoration-none" ID="hlPlayer" runat="server"
                                                NavigateUrl='<%# "PlayerStats.aspx?PlayerID=" + Eval("PlayerID") + "&FullName=" + Server.UrlEncode(Eval("FullName").ToString()) %>'
                                                Text='<%# Eval("FullName") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <div class="col">
                            <h3 class="text-white fw-bold form-control-lg">Attackers</h3>
                            <asp:GridView class="table table-dark table-striped" ID="gvAttackers" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Player Name">
                                        <ItemTemplate>
                                            <asp:HyperLink class="text-reset text-decoration-none" ID="hlPlayer" runat="server"
                                                NavigateUrl='<%# "PlayerStats.aspx?PlayerID=" + Eval("PlayerID") + "&FullName=" + Server.UrlEncode(Eval("FullName").ToString()) %>'
                                                Text='<%# Eval("FullName") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>




            </div>
        </form>
    </div>
</asp:Content>

