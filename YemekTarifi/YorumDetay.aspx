<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Ad Soyad :</td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="textbox" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mail Adresi :</td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="textbox" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">İçerik :</td>
            <td>
                <asp:TextBox ID="TxtIcerik" runat="server" CssClass="textbox" Height="100px" TextMode="MultiLine" Width="302px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Yemek :</td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" CssClass="textbox" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="BtnOnayla" runat="server" CssClass="buton" Height="30px" OnClick="BtnOnayla_Click" Text="Onayla" Width="100px" />
            </td>
        </tr>
    </table>
</asp:Content>

