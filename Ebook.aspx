<%@ Page Title="E-Book" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ebook.aspx.cs" Inherits="Ebook" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .it
        {
            font-size: xx-large;
            font-family: Times New Roman Greek;
            font-weight: bolder;
            color: Green;
            height: 43px;
        }
        .style3
        {
            text-align: left;
        }
    .style4
    {
        text-align: center;
    }
    .style5
    {
        width: 352px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center" class="it">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Image/pdf.png" />
&nbsp;&nbsp;
                E-Book&nbsp;
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Image/pdf.png" />
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/Image/sarvavtariswaminarayan.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/shikshavalli.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" 
                    ImageUrl="~/Image/kishorsatsangpraveshmMa.gif" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/yogigitamarma.jpg" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2" 
                
                style="color: #800080; font-size: large; font-weight: bold; text-align: center;">
                Click Below link For Download E-Book of the Satsang Exam or Other Book</td>
        </tr>
        <tr>
            <td class="style5" style="text-align: right">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" 
                style="border: thin solid #FF0000; text-align: right; background-color: #FFFF00;">
                &nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                    AlternateText="Satsang Exam E-Book" ImageUrl="~/Image/karierajighanshyam.jpg" 
                    PostBackUrl="~/Exam E-Book.aspx" />
            </td>
            <td class="style3" style="border: thin solid #FF0000; background-color: #FFFF00;" 
                valign="middle">
                <asp:HyperLink ID="HyperLink12" runat="server" Font-Bold="True" 
                    Font-Size="X-Large" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/Exam E-Book.aspx">Satsang Exam E-Book</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" 
                style="border: thin solid #FF0000; text-align: right; background-color: #FFFF00;">
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    AlternateText="Satsang Exam E-Book" ImageUrl="~/Image/swaminivato.gif" 
                    PostBackUrl="~/Other Book.aspx" />
            </td>
            <td class="style3" 
                style="border: thin solid #FF0000; background-color: #FFFF00">
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Bold="True" 
                    Font-Size="X-Large" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/Other Book.aspx">Vachanamrut Swamini Vato &amp; Other Books</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

