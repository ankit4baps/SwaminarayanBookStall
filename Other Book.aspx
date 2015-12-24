<%@ Page Title="Other Book" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Other Book.aspx.cs" Inherits="Other_Book" %>

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
        .style2
        {
            text-align: center;
        }
    .style3
    {
        text-align: center;
    }
    .style4
    {
        text-align: center;
        width: 496px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td colspan="2" style="text-align: center" class="it">
            Vachanamrut &amp; Other E-Book</td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
            <asp:Image ID="Image1" runat="server" 
                ImageUrl="~/Image/yagnapurushupnishad.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/vachanamrutsmall.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/swaminivato.gif" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/vicharan.jpg" />
        </td>
    </tr>
    <tr>
        <td style="text-align: center; border: thin solid #FF0000; color: #800080; font-size: large; font-weight: bold; text-align: center; background-color: #FFFF00;" 
            class="style3">
            Vachanamrut &amp; Swamini Vato</td>
        <td style="text-align: center; border: thin solid #FF0000; color: #800080; font-size: large; font-weight: bold; text-align: center; background-color: #FFFF00;">
            Other E-Book</td>
    </tr>
    <tr>
        <td style="border-right-style: solid; border-right-width: thin; border-color: #FF0000; border-left-style: solid; border-left-width: thin" 
            class="style3">
            &nbsp;</td>
        <td style="border-right-style: solid; border-right-width: thin; border-color: #FF0000; border-left-style: solid; border-left-width: thin">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
            <asp:HyperLink ID="HyperLink12" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/E-Book/vachanamrut.pdf" Target="_blank">Vachanamrut</asp:HyperLink>
        </td>
        <td class="style2" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
            <asp:HyperLink ID="HyperLink14" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/E-Book/KishorePravin-guj.pdf" Target="_blank">Satsang Pravin</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style4" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
            <asp:HyperLink ID="HyperLink13" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/E-Book/Swamini_Vato.pdf" Target="_blank">Swamini Vato</asp:HyperLink>
        </td>
        <td class="style2" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
            <asp:HyperLink ID="HyperLink15" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/E-Book/VachanmalaPart2-guj.pdf" Target="_blank">Satsang Vachanmala</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

