<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Registration_login" Theme="SkinFile"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    body
    {
        
    }
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
    .lbl1
    {
        font-size: medium;
        font-family: Times New Roman Greek;
        font-weight: bold;
        color: Purple;
        width: 377px;
        text-align: right;
    }
        .style5
        {
            text-align: center;
            font-size: medium;
        }
    .style6
    {
            font-size: medium;
            font-family: Times New Roman Greek;
            font-weight: bold;
            color: Purple;
            width: 447px;
            text-align: right;
        }
    .style7
    {
            text-align: center;
            font-size: medium;
            width: 447px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="it">
                Login</td>
        </tr>
        <tr>
            <td class="style6">
                E-Mail:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="22px" Width="180px" 
                    SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter Proper E-Mail" 
                    Font-Bold="True" Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Password:</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" Width="150px" TextMode="Password" 
                    Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpass" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Login" 
                    onclick="btnlogin_Click" SkinID="but" ValidationGroup="a"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" 
                    Text="Cancel" SkinID="but" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                Not Yet Registerd? Click here to
                <asp:HyperLink ID="HyperLink11" runat="server" 
                    NavigateUrl="~/Registration/NewUser.aspx">Register Now</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

