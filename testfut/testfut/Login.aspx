<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="testfut.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <title>LogIn</title>
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

        .login-container {
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

        #login, #signup {
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

            #login:hover, #signup:hover {
                background-color: #ccc;
            }
            #errorLabel {
                color: red;
            }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>FastFoot</h1>
        <div class="error-message">
            <asp:Label ID="errorLabel" runat="server" Visible="false"></asp:Label>
        </div>
        <form id="form1" runat="server">
            <div>
                <asp:TextBox ID="username" runat="server" placeholder="Username"></asp:TextBox>
                <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <div class="button-container">
                    <asp:Button ID="login" runat="server" Text="Login" OnClick="Login_Click" />
                    <a href="SignUp.aspx">
                        <button id="signup" type="button">Sign Up</button>
                    </a>
                </div>
                <br />
            </div>
        </form>
    </div>
</body>
</html>
