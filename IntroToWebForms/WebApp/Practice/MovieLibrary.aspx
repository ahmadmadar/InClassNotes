<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovieLibrary.aspx.cs" Inherits="WebApp.Practice.MovieLibrary1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <h1>Movie Library</h1>
    </div>
    <div class="row">
        <div class="col-md-6">
            <p>
                Fill the form below to add information on the movie for your movie library.
            </p>
            <fieldset class="form-horizontal" >
                <asp:Label ID="Label1" runat="server" AssociatedControlID="MovieTitle">Title</asp:Label>
                <asp:TextBox ID="MovieTitle" runat="server"></asp:TextBox>
                <br />

                <asp:Label ID="Label2" runat="server" AssociatedControlID="Year">Year</asp:Label>
                <asp:TextBox ID="Year" runat="server"></asp:TextBox>
                <br />

                <asp:Label ID="Label3" runat="server" AssociatedControlID="Media">Media</asp:Label>
                <asp:RadioButtonList ID="Media" runat="server">
                    <asp:ListItem> DVD</asp:ListItem>
                    <asp:ListItem> VHS</asp:ListItem>
                    <asp:ListItem> File</asp:ListItem>
                </asp:RadioButtonList>
                <br />

                <asp:Label ID="Label4" runat="server" AssociatedControlID="Rating">Rating</asp:Label>
                <asp:RadioButtonList ID="Rating" runat="server">
                    <asp:ListItem> General (G)</asp:ListItem>
                    <asp:ListItem> Parental Guidance (PG)</asp:ListItem>
                    <asp:ListItem> 14 A</asp:ListItem>
                    <asp:ListItem> 18 A</asp:ListItem>
                    <asp:ListItem> Restricted (R)</asp:ListItem> 
                </asp:RadioButtonList> 
                <br />
                
                <asp:Label ID="Label5" runat="server" AssociatedControlID="Review">Review (1-5 Stars)</asp:Label>
                <asp:DropDownList ID="Review" runat="server" CssClass="form-control">
                    <asp:ListItem>1 Star</asp:ListItem>
                    <asp:ListItem>2 Star</asp:ListItem>
                    <asp:ListItem>3 Star</asp:ListItem>
                    <asp:ListItem>4 Star</asp:ListItem>
                    <asp:ListItem>5 Star</asp:ListItem>
                </asp:DropDownList>
                <br />

                <asp:Label ID="Label6" runat="server" AssociatedControlID="ISBN">ISBN</asp:Label>
                <asp:TextBox ID="ISBN" runat="server"></asp:TextBox>
                <asp:Button ID="Search" runat="server" Text="Search Online" />
                <br />
              </fieldset>
        </div>
            
            <p>
                <asp:Button ID="Submit" runat="server" Text="Add to Library" />
            </p>
        </div>
        <div class="col-md-6">
            <asp:Label ID="MessageLabel" runat="server" />
            <div>
                
            </div>
        </div>
</asp:Content>