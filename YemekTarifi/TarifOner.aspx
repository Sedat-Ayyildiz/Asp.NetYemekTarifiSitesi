    <%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style7 {
        text-align: right;
    }
        .auto-style13 {
            width: 450px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Tarif Ad : </strong></td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="280px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Malzemeler :</strong></td>
        <td>
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="282px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Yapılış : </strong></td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="282px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Resim : </strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="286px" CssClass="textbox" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Tarif Öneren :</strong></td>
        <td>
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="280px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Mail Adresi :</strong></td>
        <td>
            <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="280px" CssClass="textbox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><strong><em>
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FFFF99" CssClass="buton" Height="30px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
            </em></strong></td>
    </tr>
</table>
</asp:Content>

