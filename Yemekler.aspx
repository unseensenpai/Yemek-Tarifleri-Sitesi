﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitemiz.Yemekler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        font-size: large;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style7 {
        text-align: right;
        width: 66px;
    }
    .auto-style8 {
        width: 329px;
            text-align: left;
        }
        .auto-style9 {
            color: #66FF99;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style16 {
            width: 30px;
        }
        .auto-style17 {
            font-weight: bold;
            font-size: 12pt;
        }
        .auto-style18 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>    <asp:Panel ID="Panel1" runat="server" BackColor="Black" CssClass="auto-style3">
        <div class="auto-style11">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </td>
                    <td><strong>YEMEK LİSTESİ</strong></td>
                </tr>
            </table>
            <strong>___________________________________________________________</strong><br class="auto-style9" />
        </div>
    </asp:Panel>
    </strong>
    <asp:Panel ID="Panel2" runat="server" BackColor="Black">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style8">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/Refresh2.png" Width="30px"/></a>
                        </td>
                        <td class="auto-style5">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/delete 2.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>

    <strong>    <asp:Panel ID="Panel3" runat="server" BackColor="Black" CssClass="auto-style3">
        <div class="auto-style11">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style12" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </td>
                    <td><strong>YEMEK EKLEME</strong></td>
                </tr>
            </table>
            <strong>___________________________________________________________</strong><br class="auto-style9" />
        </div>
    </asp:Panel>
    </strong>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Yemek Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="120px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Yemek Tarifi:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="175px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style17" Height="30px" OnClick="BtnEkle_Click" Text="Ekle" Width="100px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
