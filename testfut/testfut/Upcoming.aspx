<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Upcoming.aspx.cs" Inherits="testfut.UpcomingFixtures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="UpcomingHead" runat="server">
    <link rel="stylesheet" href="widgets.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="allContent">
        <form id="form1" runat="server">
            <asp:DropDownList ID="ddlLeagues" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLeagues_SelectedIndexChanged" class="standingsOfLeague">
                <asp:ListItem class="dropdownLeague" Text="Select a League"></asp:ListItem>
                <asp:ListItem class="dropdownLeague" Text="Premier League" Value="39"></asp:ListItem>
                <asp:ListItem class="dropdownLeague" Text="La Liga" Value="140"></asp:ListItem>
                <asp:ListItem class="dropdownLeague" Text="Serie A" Value="135"></asp:ListItem>
                <asp:ListItem class="dropdownLeague" Text="Bundesliga" Value="78"></asp:ListItem>
                <asp:ListItem class="dropdownLeague" Text="Ligue 1" Value="61"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Panel ID="widgetDiv" runat="server"></asp:Panel>
        </form>
    </div>
</asp:Content>
