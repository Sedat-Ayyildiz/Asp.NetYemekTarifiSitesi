<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style13 {
            text-align: center;
            background-color: #FFFFCC;
        }

        .auto-style12 {
            width: 30px;
            margin-left: 40px;
            background-color: #FFFFCC;
        }

        .auto-style14 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:panel id="Panel1" runat="server" backcolor="#FFFFCC" cssclass="auto-style13">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><%--KDOLARI TAMAMLAYIP PROJEYİ BAŞLATMADAN ÖNCE BUTONLARIN ONCLICK ÖZELLİKLERİNİ SİLMEYİ UNUTMAYIN--%>
                    <asp:Button ID="BtnEkle" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="BtnEkle_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="BtnCikar" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="BtnCikar_Click" />
                </td>
                <td class="auto-style13"><strong><em>YEMEK LİSTESİ</em></strong></td>
            </tr>
        </table>
    </asp:panel>
    <asp:panel id="Panel2" runat="server" cssclass="auto-style5">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/Secildi.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:panel>
</asp:Content>
