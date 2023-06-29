<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
            margin-top: 15px;
        }

        .auto-style15 {
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

        .auto-style20 {
            width: 30px;
            margin-left: 80px;
            background-color: #FFFFCC;
        }

        .auto-style21 {
            margin-left: 40px;
            height: 26px;
        }

        .auto-style22 {
            text-align: center;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" CssClass="auto-style13">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><%--KDOLARI TAMAMLAYIP PROJEYİ BAŞLATMADAN ÖNCE BUTONLARIN ONCLICK ÖZELLİKLERİNİ SİLMEYİ UNUTMAYIN--%>
                    <asp:Button ID="BtnEkle" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="BtnEkle_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="BtnCikar" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="BtnCikar_Click" />
                </td>
                <td class="auto-style13"><strong><em>YEMEKLER LİSTESİ</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style5">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7"><%--Aynı sayfada select komutunu kullandıgımız için kategoriyi slmek için işlem adında parametre yolladık !--%>
                            <a href="Yemekler.aspx?Yemekid=<%# Eval("Yemekid")%> &islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İkonlar/Sil.png" Width="30px" CssClass="auto-style7" /></a>
                        </td>
                        <td class="auto-style7">
                            <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/Guncelle.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#FFFFCC">
        <asp:Panel ID="Panel4" runat="server" BackColor="#FFFFCC" CssClass="auto-style14">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="BtnEkle1" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="BtnEkle1_Click" />
                    </td>
                    <td class="auto-style20">
                        <asp:Button ID="BtnCikar1" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="BtnCikar1_Click" />
                    </td>
                    <td class="auto-style13"><strong><em>YEMEK EKLEME</em></strong></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel5" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style19"></td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">Yemek Ad :</td>
                <td>
                    <asp:TextBox ID="TxtYemekAd" runat="server" Width="300px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Malzemeler :</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TxtMalzeme" runat="server" CssClass="textbox" Height="100px" TextMode="MultiLine" Width="302px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Yemek Tarifi :</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TxtTarif" runat="server" CssClass="textbox" Height="200px" TextMode="MultiLine" Width="302px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">Kategori :</td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" Width="308px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="BtnYemekEkle" runat="server" BackColor="#CCFF99" BorderColor="White" CssClass="buton" Font-Bold="True" Height="30px" OnClick="BtnYemekEkle_Click" Text="Ekle" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
