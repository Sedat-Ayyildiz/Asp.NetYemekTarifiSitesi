<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }

        .auto-style8 {
            color: #FFFFFF;
        }

        .auto-style9 {
            font-size: x-large;
            background-color: white;
            color: red;
            text-align: left;
        }            

            .auto-style9:hover {
                font-size: 18px;
                background-color: #d0b8b8;
                font-weight: bold;                
            }

        .auto-style10 {
            font-size: x-large;
            color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:datalist id="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style9">
                        <a href="YemekDetay.Aspx?Yemekid=<%# Eval("Yemekid")%>"><strong><%--Eval Yemekid yaptık kı AnaSayfada Hangi yemege tıklarsak onun id'si oluşsun diye.--%>
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></a>
                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler :</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi :</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi :</strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>' CssClass="auto-style8"></asp:Label>
                        <strong>- Puan :</strong> <em>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style8"></asp:Label>
                        </em></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #808080"></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:datalist>
</asp:Content>

