<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            height: 26px;
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
            <td class="auto-style5">Mesaj Gönderen :</td>
            <td>
                <asp:TextBox ID="TxtMsjGonderen" runat="server" Width="285px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Başlık :</td>
            <td>
                <asp:TextBox ID="TxtBaslik" runat="server" Width="285px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Mail Adresi :</td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" Width="285px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Mesaj İçerik :</td>
            <td>
                <asp:TextBox ID="TxtMesajIcerik" runat="server" Height="200px" TextMode="MultiLine" Width="287px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
    </table>
</asp:Content>

