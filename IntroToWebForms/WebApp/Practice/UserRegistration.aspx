<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebApp.Practice.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="page-header">
        <h1>User Registration</h1>
        <div class="row">
            <div class="col-md-6">
                <p>
                    Please fill in the form below and click submit. After submitting the form, you will recieve an email with a link to confirm your registration. By clicking on that link, you will complete the registration process.
                </p>
                <fieldset class="form-horizontal">
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="FirstName">First Name</asp:Label>
                    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label2" runat="server" AssociatedControlID="LastName">Last Name</asp:Label>
                    <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label3" runat="server" AssociatedControlID="UserName">User Name</asp:Label>
                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label4" runat="server" AssociatedControlID="Email">Email Address</asp:Label>
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label5" runat="server" AssociatedControlID="ConfirmEmail">Confirm Email</asp:Label>
                    <asp:TextBox ID="ConfirmEmail" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label6" runat="server" AssociatedControlID="Password">Password</asp:Label>
                    <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label7" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password</asp:Label>
                    <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>

                    <asp:CheckBox ID="Checkbox1" runat="server" AssociateControlID="AgreeToTerms" Text="I agree to the terms of this site" />
                </fieldset>
                <p>
                    <asp:LinkButton ID="SubmitRegistration" runat="server" CssClass="btn btn-primary" OnClick="SubmitRegistration_Click" />
                </p>
            </div>
        </div>
        <div class="col-md-6">
            <asp:Label ID="MessageLabel" runat="server" />
            <div>
                <asp:Label ID="label8" runat="server" />
                <asp:GridView ID="" runat="server">
                    <EmptyDataTemplate>

                    </EmptyDataTemplate>
                </asp:GridView>
                <%--Validation Controls--%>
            
        </div>
    </div>
    </div>
    <script src="../Scripts/bootwrap-freecode.js"></script>
</asp:Content>
