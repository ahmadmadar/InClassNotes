<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET is important to pass this class</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-12">
            <asp:Label ID="MessageLabel" runat="server" />
            <asp:TextBox ID="UserReply" runat="server" />
            <asp:LinkButton ID="RespondToUser" runat="server"
                 Text="Tell me something" OnClick="RespondToUser_Click" />
            <br />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <asp:LinkButton ID="TellUserBirthdate" runat="server" OnClick="TellUserBirthdate_Click">Tell me your birthdate.</asp:LinkButton>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Code Demos</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Add Code Demo</h2>
            <fieldset>
                <asp:Label ID="Label1" runat="server" Text="Demo Name" AssociatedControlID="DemoName" />
                <asp:TextBox ID="DemoName" runat="server" />

                <asp:Label ID="Label2" runat="server" Text="Description" AssociatedControlID="Description" />
                <asp:TextBox ID="Description" runat="server" TextMode="MultiLine" />
            </fieldset>
            <asp:LinkButton ID="AddDemo" runat="server" OnClick="AddDemo_Click" CssClass="btn btn-primary">
                <i class="glyphicon glyphicon-plus"></i> Add Demo
            </asp:LinkButton>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
