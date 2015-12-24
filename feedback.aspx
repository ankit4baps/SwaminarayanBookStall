<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/custMaster.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Theme="SkinFile"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title></title>
    <style type="text/css">

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
        font-size: medium;
        font-family: Times New Roman Greek;
        font-weight: bold;
        color: Purple;
        width: 255px;
        text-align: right;
    }
    .style5
    {
        text-align: left;
        width: 255px;
    }
    .style3
    {
        text-align: left;
        }
        .style6
        {
            font-size: xx-large;
            font-family: Times New Roman Greek;
            font-weight: bolder;
            color: Green;
            height: 43px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/feed.png" />
&nbsp;Feedback
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/feed.png" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                E-Mail:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="22px" Width="180px" 
                    SkinID="txt" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Book Variety:</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g" Text="A" 
                    ValidationGroup="a" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g" Text="B" 
                    ValidationGroup="a" />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="g" Text="C" 
                    ValidationGroup="a" />
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="g" Text="D" 
                    ValidationGroup="a" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Web Rating:</td>
            <td>
                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="b" Text="A" 
                    ValidationGroup="a" />
                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="b" Text="B" 
                    ValidationGroup="a" />
                <asp:RadioButton ID="RadioButton7" runat="server" GroupName="b" Text="C" 
                    ValidationGroup="a" />
                <asp:RadioButton ID="RadioButton8" runat="server" GroupName="b" Text="D" 
                    ValidationGroup="a" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Remarks:</td>
            <td>
                <asp:TextBox ID="txtrem" runat="server" Height="50px" TextMode="MultiLine" 
                    Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtrem" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" Font-Bold="False" Font-Size="Medium" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Satisfaction:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Excellent</asp:ListItem>
                    <asp:ListItem>Very Good</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>OK</asp:ListItem>
                    <asp:ListItem>Bad</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnfeed" runat="server" Text="Save Feedback" 
                    SkinID="but" ValidationGroup="a" onclick="btnfeed_Click"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" 
                    runat="server" Text="Cancel" SkinID="but" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

