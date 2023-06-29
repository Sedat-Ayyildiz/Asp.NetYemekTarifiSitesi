<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: x-large;
        }
    .auto-style7 {
        width: 428px;
        height: 50px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="393px">
        <ItemTemplate>
            <table class="auto-style7">
                <tr>
                    <td class="auto-style3"><strong>
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzeme :</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td><strong>Tarif :</strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image2" runat="server" Height="175px" Width="350px" Text='<%# Eval("YemekResim") %>' ImageUrl='<%# Eval("YemekResim") %>' />
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td><strong>Puan :</strong><asp:Label ID="Label16" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style8"></asp:Label></td>
                </tr>
                <tr>
                    <td><em><strong>Eklenme Tarihi : </strong>
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style8"></asp:Label>
                        </em></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

