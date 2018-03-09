<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovieLibrary.aspx.cs" Inherits="WebApp.Practice.MovieLibrary" %>
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
                <asp:TextBox ID="Year" runat="server" MaxLength="4"></asp:TextBox>
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
             <p>
                <asp:Button ID="Submit" runat="server" Text="Add to Library"  OnClick="Submit_Click"/>
            </p>
        </div>
            
           
        </div>
        <div class="col-md-6">
            <asp:Label ID="MessageLabel" runat="server" />
            <div>
                <asp:Label ID="Label7" runat="server" />
                <asp:GridView ID="MovieLibraryGridView" runat="server">
                    <EmptyDataTemplate>
                        
                    </EmptyDataTemplate>
                </asp:GridView>
                 <%--Validation Controls--%>
                <asp:ValidationSummary ID="ValidationSummary" runat="server" CssClass="alert alert-warning alert-dismissible" HeaderText="Please fix the following problems before sumitting this form." />
                <asp:RequiredFieldValidator ID="ValidateTitle" runat="server" Display="None" ControlToValidate="MovieTitle" ErrorMessage="A movie title is required."/>
                <asp:RequiredFieldValidator ID="ValitateYear" runat="server" Display="None" ControlToValidate="Year" ErrorMessage="A year is required." />
                <asp:RangeValidator ID="ValidateYear1" runat="server" Display="None" ControlToValidate="Year" ErrorMessage="Year must be since 1900" MinimumValue="1900" MaximumValue="2018" Type="Integer" />
                <asp:RequiredFieldValidator ID="ValidateMediaType" runat="server" Display="None" ControlToValidate="Media" ErrorMessage="You must indicate the type of media on which the movie is stored."/>
            </div>
        </div>
</asp:Content>