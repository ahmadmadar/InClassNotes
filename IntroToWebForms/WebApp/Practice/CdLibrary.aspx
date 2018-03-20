<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CdLibrary.aspx.cs" Inherits="WebApp.Practice.CdLibrary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="page-header">
        <h1>CD Library</h1>
        <div class="row">
            <div class="col-md-6">
                <p>
                    Fill the form below to add a music CD to your personal library.
                </p>
                <fieldset class="form-horizontal">
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="ISBN">ISBN (Barcode)</asp:Label>
                    <asp:TextBox ID="ISBN" runat="server"></asp:TextBox>
                    <asp:Button ID="Search" runat="server" Text="Search Online for CD" />
                    <br />

                    <asp:Label ID="Label2" runat="server" AssociatedControlID="CdTitle">Title</asp:Label>
                    <asp:TextBox ID="CdTitle" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label3" runat="server" AssociatedControlID="Artist">Artist(s)</asp:Label>
                    <asp:TextBox ID="Artist" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label4" runat="server" AssociatedControlID="Year">Year</asp:Label>
                    <asp:TextBox ID="Year" runat="server"></asp:TextBox>
                    <br />

                    <asp:Label ID="Label5" runat="server" AssociatedControlID="NumberOfTracks">Number of Tracks</asp:Label>
                    <asp:TextBox ID="NumberOfTracks" runat="server"></asp:TextBox>
                    <br />
                </fieldset>
                <p>
                    <asp:Button ID="Submit" runat="server" Text="Add to Library" Onclick="Submit_Click" />
                </p>
            </div>
        </div>
    </div>
</asp:Content>
