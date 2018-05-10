<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDisplay.aspx.cs" Inherits="SportsPro.CustomerDisplay" %>

<!DOCTYPE html>

<!  	Name:		Julie Moore
     	Course:		INFO 2590
      	Date:		February 28, 2018
      	Project:	Midterm Project 1
-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SportsPro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <header class="jumbotron">
        <h1>SportsPro</h1>
        <h2>Sports management software for the sports enthusiast</h2>
    </header>
    <main>
        <form id="form1" runat="server" class="horizontal" role="form">
            <div class="form-group">
                <label class="col-sm-3" for="ddlCustomers">Select a customer:</label>
                <div class="col-sm-9">
                    <asp:DropDownList ID="ddlCustomers" runat="server"
                        CssClass="form-control" DataSourceID="SqlDataSource1" 
                        DataTextField="Name" DataValueField="CustomerID" Enabled="True" AutoPostBack="True">                                                                                                                                                                                                                                                                                                                                                           
                    </asp:DropDownList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email] FROM [Customers] ORDER BY [Name]"></asp:SqlDataSource>
            </div>
            <div class="form-group">
                <label class="custom-control-label col-sm-3" for="lblAdress">
                    Address:</label>
                <div class="col-sm-9"><h4><asp:Label ID="lblAddress" runat="server"></asp:Label></h4></div>
            </div>
            <div class="form-group">
                <label class="custom-control-label col-sm-3" for="lblPhone">
                   Phone:</label>
                <div class="col-sm-9"><h4><asp:Label ID="lblPhone" runat="server"></asp:Label></h4></div>
            </div>
            <div class="form-group">
                <label class="custom-control-label col-sm-3" for="lblEmail">
                    Email:</label>
                <div class="col-sm-9"><h4><asp:Label ID="lblEmail" runat="server"></asp:Label></h4></div>
            </div>
            <div class="form-group">
                <div class="col-sm-8">
                    <asp:Button ID="btnAdd_Contact" runat="server" Text="Add to Contact List"
                        onClick="btnAdd_Click" CssClass="btn" />
                    <asp:Button ID="btnContactList" runat="server" Text="Display Contact List"
                        PostBackUrl="~/ContactDisplay.aspx" CausesValidation="false"
                        CssClass="btn" OnClick="btnContactList_Click" />
                </div>
            </div>
            <div class="form-group"><%-- message label --%>
                <div class="col-sm-8">
                    <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                    CssClass="text-info col-sm-12"></asp:Label>
                </div>
            </div>
        </form>
    </main>
</div>
</body>
</html>
