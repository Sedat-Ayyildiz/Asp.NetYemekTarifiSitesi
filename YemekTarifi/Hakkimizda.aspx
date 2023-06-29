<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            font-size: large;
            color: #FFFFCC;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style3">
        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <em><strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style13" Text='<%# Eval("Metin") %>'></asp:Label>
                </strong></em>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl="~/Banner Foto/blog-information-website-concept-workplace-background-text-view-above-127465079.jpg" Width="449px" />
</asp:Content>

