<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 30px;
            margin-left: 40px;
            background-color: #FFFFCC;
        }
        .auto-style13 {
            text-align: center;
            background-color: #FFFFCC;
        }
        .auto-style14 {
            text-align: left;
            background-color: #FFFFCC;
            font-size: x-large;
        }
    .auto-style16 {
        text-align: center;
    }
    .auto-style17 {
        border: 2px solid #456879;
        border-radius: 12px;
        height: 22px;
        width: 230px;
        font-weight: bold;
        font-size: large;
        font-style: italic;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" CssClass="auto-style13">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><%--BUTONLARIN ONCLICK ÖZELLİKLERİNİ SİLMEYİ UNUTMAYIN--%>
                    <asp:Button ID="BtnEkle" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="BtnEkle_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="BtnCikar" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="BtnCikar_Click" />
                </td>
                <td class="auto-style14"><strong><em>HAKKIMIZDA</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="TxtHakkimizda" runat="server" Height="210px" TextMode="MultiLine" Width="438px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"><strong><em>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="40px" Text="Güncelle" Width="150px" OnClick="Button1_Click" />
                    </em></strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
