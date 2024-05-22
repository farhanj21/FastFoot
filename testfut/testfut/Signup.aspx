<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="testfut.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1B1C21;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .signup-container {
            background-color: #2E3034;
            padding: 20px;
            border-radius: 5px;
            width: 300px;
            text-align: center;
        }

        h1 {
            color: #fff;
            margin-bottom: 20px;
        }

        #username, #password {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid #fff;
            background-color: transparent;
            color: #fff;
            outline: none;
        }

        .button-container {
            text-align: center;
        }

        #signup {
            display: inline-block;
            background-color: #fff;
            color: #000;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            width: 45%;
        }


            #signup:hover {
                background-color: #ccc;
            }

        .dropdownLeague {
            background-color: #2E3034;
        }

            .dropdownLeague:hover {
                background: #1B1C21;
            }

        .standingsOfLeague {
            color: #ffffff;
            background-color: #2E3034;
        }
        .labelText {
            color: white;
        }
        #errorMessage {
            color:red;  
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <form id="form1" runat="server">
            <div>
                <h1>FastFoot</h1>
                <asp:TextBox ID="username" runat="server" placeholder="Username"></asp:TextBox>
                <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <div class="error-message">
                    <asp:Label ID="errorMessage" runat="server" Visible="false"></asp:Label>
                </div>
                <br />
                <br />
                <label for="preferredLeague" class="labelText">Preferred League:</label>
                <asp:DropDownList ID="preferredLeague" runat="server" class="standingsOfLeague">
                    <asp:ListItem class="dropdownLeague" Value="">Select a league</asp:ListItem>
                    <asp:ListItem Value="Ligue 1" class="dropdownLeague">Ligue 1</asp:ListItem>
                    <asp:ListItem Value="Bundesliga" class="dropdownLeague">Bundesliga</asp:ListItem>
                    <asp:ListItem Value="Serie A" class="dropdownLeague">Serie A</asp:ListItem>
                    <asp:ListItem Value="La Liga" class="dropdownLeague">La Liga</asp:ListItem>
                    <asp:ListItem Value="Premier League" class="dropdownLeague">Premier League</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <div class="button-container">
                    <asp:Button ID="signup" runat="server" Text="Sign Up" OnClick="Signup_Click" />
                </div>
                <div class="error-message">
                    <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
