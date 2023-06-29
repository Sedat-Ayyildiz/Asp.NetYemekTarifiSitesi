<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style14 {
            text-align: center;
            color: #FFFFFF;
            height: 30px;
        }
    
        .auto-style11 {
            color: #FF9900;
        }

        .auto-style18 {
            color: #FF9900;
            height: 33px;
        }
        .auto-style19 {
            color: #FF9900;
            text-align: center;
        }
        .auto-style22 {
            font-size: large;
            text-align: right;
            color: #FFFFCC;
            width: 148px;
        }
        .auto-style23 {
            font-size: large;
            text-align: right;
            color: #000000;
            width: 148px;
        }
        .auto-style24 {
            font-size: large;
            text-align: right;
            color: #FFFFCC;
            width: 148px;
            height: 30px;
        }
        .auto-style25 {
            font-size: large;
            text-align: right;
            color: #FFFFCC;
            width: 148px;
            height: 33px;
        }
        .auto-style26 {
            color: #FF9900;
            text-align: center;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style7">
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Ad : </strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtTarifAd" runat="server" Height="20px" Width="285px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Malzemeler : </strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtMalzeme" runat="server" Height="50px" TextMode="MultiLine" Width="285px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Yapılış : </strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="285px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Resim :</strong></td>
                <td class="auto-style18">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="28px" Width="293px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Tarif Öneren :</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtTarifOneren" runat="server" CssClass="textbox" Height="20px" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Öneren Mail :</strong></td>
                <td class="auto-style11">
                    <asp:TextBox ID="TxtOnerenMail" runat="server" CssClass="textbox" Height="20px" Width="285px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Kategori :</strong></td>
                <td class="auto-style11">
                    <%--OnClick="Button1_Click"--%>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="293px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"></td>
                <td class="auto-style26">
                    <asp:Button ID="BtnYorumYap0" runat="server" CssClass="buton" OnClick="BtnYorumYap_Click" Text="Onayla" Width="137px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

