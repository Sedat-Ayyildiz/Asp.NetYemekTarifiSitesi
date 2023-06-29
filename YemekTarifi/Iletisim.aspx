<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /*.auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            margin-left: 40px;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style9 {
            text-align: right;
            width: 146px;
        }
        .auto-style10 {
            height: 29px;
            text-align: right;
            width: 146px;
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style11 {
            width: 146px;
        }
        .auto-style12 {
            font-size: x-large;
            color: #FFFF99;
            text-align: center;
        }
        .auto-style13 {
            text-align: right;
            width: 190px;
            height: 32px;
            font-size: x-large;
        }
        .auto-style14 {
            margin-left: 40px;
            height: 32px;
        }
        .auto-style15 {
            width: 190px;
            color: #FF9900;
        }
        .auto-style16 {
            font-size: x-large;
            color: #FF3300;
            width: 190px;
            text-align: right;
        }
        .auto-style18 {
            font-size: x-large;
            background-color: white;
            color: red;
            text-align: right;
            width: 190px;
        }*/
        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            text-align: center;
            font-size: x-large;
            color: #FFFFFF;
            height: 39px;
        }
        .auto-style16 {
            width: 450px;
        }
        .auto-style17 {
            text-align: right;
            height: 32px;
        }
        .auto-style18 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td colspan="2" class="auto-style14"><strong><em>MESAJ PANELİ</em></strong></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style13">Ad Soyad :</td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="textbox" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">Mail Adresiniz :</td>
            <td class="auto-style18">
                <asp:TextBox ID="TxtMailAdresi" runat="server" CssClass="textbox" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Konu :</td>
            <td>
                <asp:TextBox ID="TxtKonu" runat="server" CssClass="textbox" Width="250px" Height="23px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Mesaj :</td>
            <td>
                <asp:TextBox ID="TxtMesaj" runat="server" CssClass="textbox" Width="250px" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="BtnGonder" runat="server" Text="Gönder" Width="150px" CssClass="buton" Height="30px" OnClick="BtnGonder_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

