<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowCustomers.aspx.cs" Inherits="Customer_Database_final.ShowCustomers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show customer</title>
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


        <br />

        <div>

            <table class="table table-hover">
                <!-- fix size so it all fits and make row shorter, unnecessary white space there-->
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">ZIP code</th>
                        <th scope="col">City</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone number</th>
                        <th scope="col">Subscription name</th>
                        <th scope="col">Subscription period</th>
                        <th scope="col">Date joined</th>
                        <th scope="col">Payed</th>
                        <th scope="col">Active</th>
                    </tr>
                </thead>
                <asp:Repeater ID="RepCustomers" runat="server">
                    <ItemTemplate>
                        <tbody>
                            <tr>
                                <th scope="row"><%# Eval("CustomerID")%></th>
                                <td><%# Eval("FistName")%></td>
                                <td><%# Eval("LastName")%></td>
                                <td title="<%#Eval("Address") %>"><%# Eval("Address")%></td>
                                <td><%# Eval("ZIPcode")%></td>
                                <td><%# Eval("City.City1")%></td>
                                <td title="<%#Eval("Email") %>"><%# ClipString(Eval("Email"),15,true)%></td>
                                <td><%# Eval("PhoneNumber")%></td>
                                <td><%# Eval("Subscription.SubscriptionName")%></td>
                                <td><%# Eval("Subscription.SubscriptionPeriod")%></td>
                                <td><%# FormatData(Eval("DateJoined"))%></td>
                                <td><%# Eval("Payed")%></td>
                                <td><%# Eval("Active")%></td>
                                <!-- if more time makes this row clickable and then scrollbar (edit customer)   make the columns even-->
                            </tr>
                        </tbody>
                    </ItemTemplate>
                </asp:Repeater>
            </table>

        </div>

    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

</body>
</html>
