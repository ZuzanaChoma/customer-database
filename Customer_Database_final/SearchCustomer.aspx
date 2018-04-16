<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchCustomer.aspx.cs" Inherits="Customer_Database_final.SearchCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search customer</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="Default.aspx">Home</a>


                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">

                        <li class="nav-item">
                            <a class="nav-link" href="Subscriptions.aspx">Subscriptions</a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Customers
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="ShowCustomers.aspx">Show customers</a>
                                <a class="dropdown-item" href="SearchCustomer.aspx">Search customer</a>
                                <a class="dropdown-item" href="EditCustomer.aspx">Edit customer</a>
                                <a class="dropdown-item" href="AddCustomer.aspx">Add new customer</a>
                            </div>
                        </li>
                        <li style="position: absolute; right: 100px; top: 15px;">
                            <asp:Label ID="usernameLabel" runat="server" Text="      "></asp:Label>
                        </li>
                        <li class="nav-item" style="position: absolute; right: 5px;">
                            <asp:Button class="btn btn-outline-primary pull-right" ID="LogoutButton" runat="server" Text="Log out" OnClick="logout_btn" />

                        </li>

                    </ul>

                </div>
            </nav>
        </div>
        <div>
            <h1 style="color: crimson; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; margin-left: 100px">Find speciffic customer</h1>
        </div>
        <br />
        <div style="margin-left: 100px">
            <a>Enter customers firstname</a>
            <asp:TextBox ID="Firstname" runat="server" required="required"></asp:TextBox>
            <br />
            <br />
            <a>Enter customers lastname</a>
            <asp:TextBox ID="Lastname" runat="server" required="required"></asp:TextBox>
            <br />

        </div>
        <br />
        <asp:Button ID="Searchbutton" runat="server" Text="Search customer" OnClick="SearchButton_Click" Style="margin-left: 150px" />
        <br />
        <br />
        <table id="ShowResults" runat="server" visible="false">
            <thead>
                <tr>
                    <th scope="col">Customer ID </th>
                    <th scope="col">First Name </th>
                    <th scope="col">Last Name </th>
                    <th scope="col">Address </th>
                    <th scope="col">ZIP code </th>
                    <th scope="col">City </th>
                    <th scope="col">Email </th>
                    <th scope="col">Phone number </th>
                    <th scope="col">Subscription name </th>
                    <th scope="col">Subscription period </th>
                    <th scope="col">Date joined </th>
                    <th scope="col">Payed </th>
                    <th scope="col">Active </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:Label ID="CustomerIdLbl" runat="server" Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="FirstnameLbl" runat="server" Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="LastnameLbl" runat="server" Text=""></asp:Label></td>

                    <td>
                        <asp:Label ID="AddressLbl" runat="server" Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="ZIPcodeLbl" runat="server" Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="CityLbl" runat="server" Text=""></asp:Label></td>
                    <td>
                        <asp:Label ID="EmailLbl" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="PhNumberLbl" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="SubscriptionNameLbl" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="SubscriptionPeriodLbl" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="DateJoinedLbl" runat="server" Text="Label"></asp:Label>
                    </td>

                    <td>
                        <asp:CheckBox ID="PayedCheckBox" runat="server" />
                    </td>
                    <td>
                        <asp:CheckBox ID="ActiveCheckBox" runat="server" />
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

</body>
</html>
