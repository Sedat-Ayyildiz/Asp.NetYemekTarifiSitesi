<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
            width: 150px;
        }
        .auto-style6 {
            text-align: center;
        }
    .auto-style7 {
        border: 2px solid #777;
        border-radius: 12px;
        outline: none;
        font-weight: bold;
        background-color: #66FFFF;
    }
    .auto-style8 {
        border: 2px solid #456879;
        border-radius: 12px;
        height: 22px;
        width: 230px;
        font-weight: bold;
        background-color: #66FF99;
    }
        .auto-style9 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Yemek Ad :</td>
            <td>
                <asp:TextBox ID="TxtYemekAd" runat="server" CssClass="textbox" Width="295px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Malzemeler :</td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" CssClass="textbox" Height="100px" TextMode="MultiLine" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif :</td>
            <td>
                <asp:TextBox ID="TxtTarif" runat="server" CssClass="textbox" Height="200px" TextMode="MultiLine" Width="297px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Kategori :</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" Width="303px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Yemek Görüntü :</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style7" OnClick="BtnGuncelle_Click" Text="Güncelle" Height="25px" Width="220px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">
                <strong>
                <asp:Button ID="BtnGununYemegiSec" runat="server" CssClass="auto-style8" Height="25px" OnClick="BtnGununYemegiSec_Click" TabIndex="1" Text="Günün Yemeği Seç" Width="220px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>

