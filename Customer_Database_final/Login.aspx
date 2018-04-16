<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Customer_Database_final.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LoginCss.css" rel="stylesheet" />
</head>
<body>

    <script src="https://use.typekit.net/ayg4pcz.js"></script>
    <script>try { Typekit.load({ async: true }); } catch (e) { }</script>

    <div class="container">
        <h1 class="welcome text-center">Welcome to StreamLive</h1>
        <img src="\images\logo.png" style="margin-left: 100px" />
        <div class="card card-container">
            <h2 class='login_title text-center'>Login</h2>
            <hr />

            <form class="form-signin" runat="server">
                <span id="reauth-email" class="reauth-email"></span>
                <p class="input_title">Username</p>
                
                <asp:TextBox ID="UsernameTextBox" class="login_box" placeholder="Enter username" required="required" runat="server"></asp:TextBox>


                <p class="input_title">Password</p>
              
                
                <asp:TextBox ID="passwordTextBox" class="login_box" placeholder="Enter password"  TextMode="Password" required="required" runat="server"></asp:TextBox>
                <div id="remember" class="checkbox">
                    <label>
                    </label>
                </div>
          
                <asp:Button ID="ButtonLogin" runat="server" class="btn btn-lg btn-primary" onclick="Login_click" Text="Login" Height="42px" Width="192px" />
                <br />
                <asp:Label ID="LblErrorMessage" runat="server" Text="Username or Password not recognized" style="color:darkmagenta" Font-Bold="true" ></asp:Label>
            </form>
        
        </div>
     
    </div>


</body>
</html>
