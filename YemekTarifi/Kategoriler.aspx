<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        background-color: #F3B57F;
    }
    .auto-style6 {
        text-align: left;
        width: 265px;
        height: 26px;
    }
    .auto-style7 {
        text-align: right;
        height: 26px;
    }
    .auto-style8 {
        text-align: right;
        width: 75px;
        height: 26px;
    }
    .auto-style9 {
        font-size: large;
    }
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
            background-color: #FFFFCC;
            margin-top:15px;
        }
        .auto-style15 {
            text-align: center;
            margin-left: 40px;
        }
        .auto-style16 {
            height: 29px;
            text-align: right;
        }
        .auto-style17 {
            height: 29px;
            margin-left: 40px;
        }
        .auto-style18 {
            text-align: right;
        }
        .auto-style19 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" CssClass="auto-style13">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><%--BUTONLARIN ONCLICK ÖZELLİKLERİNİ SİLMEYİ UNUTMAYIN--%>
                    <asp:Button ID="BtnEkle" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="BtnEkle_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="BtnCikar" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="BtnCikar_Click" />
                </td>
                <td class="auto-style13"><em><strong>KATEGORİ LİSTESİ</strong></em></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style5">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8"><%--Aynı sayfada select komutunu kullandıgımız için kategoriyi slmek için işlem adında parametre yolladık !--%>
                            <a href="Kategoriler.aspx?Kategoriid=<%# Eval("Kategoriid")%> &islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İkonlar/Sil.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style7">
                            <a href="KategoriDuzenle.aspx?Kategoriid=<%# Eval("Kategoriid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/Guncelle.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#FFFFCC" >
        <asp:Panel ID="Panel4" runat="server" BackColor="#FFFFCC" CssClass="auto-style14">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="BtnEkle1" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="BtnEkle1_Click" />
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="BtnCikar1" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="BtnCikar1_Click" />
                    </td>
                    <td class="auto-style13"><em><strong>KATEGORİ EKLEME</strong></em></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style18">Kategori Ad :</td>
                <td>
                    <asp:TextBox ID="TxtKategoriAd" runat="server" Width="300px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Kategori İkon :</td>
                <td class="auto-style17">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="308px" CssClass="textbox" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style15">
                    <asp:Button ID="BtnKategori" runat="server" BackColor="#CCFF99" BorderColor="White" CssClass="buton" Font-Bold="True" Height="30px" Text="Ekle" Width="100px" OnClick="BtnKategori_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>