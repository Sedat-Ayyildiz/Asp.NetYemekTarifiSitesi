<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

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
            margin-left: 40px;
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
                <td class="auto-style13"><strong><em>ONAYSIZ TARİF LİSTESİ</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/Oneri.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel3" runat="server" BackColor="#FFFFCC" CssClass="auto-style13">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><%--BUTONLARIN ONCLICK ÖZELLİKLERİNİ SİLMEYİ UNUTMAYIN--%>
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" Font-Bold="True" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"  />
                </td>
                <td class="auto-style13"><strong><em>ONAYLI TARİF LİSTESİ</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%# Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/Oneri.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
