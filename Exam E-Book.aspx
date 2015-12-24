<%@ Page Title="Satsang Exam E-Book" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Exam E-Book.aspx.cs" Inherits="Exam_E_Book" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center" class="it">
                Satsang Exam E-Book</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/ghanashyam.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/Image/karierajighanshyam.jpg" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" 
                    ImageUrl="~/Image/kishorsatsangprarambhmMa.gif" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Image/neelkanth.jpg" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center; border: thin solid #FF0000; color: #800080; font-size: large; font-weight: bold; text-align: center; background-color: #FFFF00;">
                English E-Book</td>
            <td style="text-align: center; border: thin solid #FF0000; color: #800080; font-size: large; font-weight: bold; text-align: center; background-color: #FFFF00;">
                Gujarati E-Book</td>
        </tr>
        <tr>
            <td style="border-right-style: solid; border-right-width: thin; border-color: #FF0000; border-left-style: solid; border-left-width: thin">
                &nbsp;</td>
            <td style="border-right-style: solid; border-right-width: thin; border-color: #FF0000; border-left-style: solid; border-left-width: thin">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
                <asp:HyperLink ID="HyperLink12" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/E-Book/Ghanshyam Charitra.pdf" Target="_blank">Ghanshyam Charitra</asp:HyperLink>
            </td>
            <td class="style2" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
                <asp:HyperLink ID="HyperLink14" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/E-Book/BalSatsang1-guj.pdf" Target="_blank">Bal Satsang 1</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
                <asp:HyperLink ID="HyperLink13" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/E-Book/KishorePravin-guj.pdf" Target="_blank">Kishor Pravin</asp:HyperLink>
            </td>
            <td class="style2" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
                <asp:HyperLink ID="HyperLink15" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/E-Book/GhanshyamCharitra-guj.pdf" Target="_blank">Ghanshyam Charitra</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style2" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
                &nbsp;</td>
            <td class="style2" 
                style="border: thin solid #FF0000; background-color: #FFDFFF;">
                <asp:HyperLink ID="HyperLink16" runat="server" Font-Bold="True" 
                    Font-Size="Medium" Font-Underline="True" ForeColor="#003366" 
                    NavigateUrl="~/E-Book/NilkanthCharitra-guj.pdf" Target="_blank">Nilkanth Charitra</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

