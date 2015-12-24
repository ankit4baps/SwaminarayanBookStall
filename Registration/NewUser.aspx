<%@ Page Title="New User" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="Registration_NewUser" Theme="SkinFile"%>

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
        }
        .style4
        {
            font-size: medium;
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
                New User</td>
        </tr>
        <tr>
            <td class="lbl1">
                E-Mail:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="22px" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter Proper E-Mail" 
                    Font-Bold="True" Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="lbl1">
                UserName:</td>
            <td>
                <asp:TextBox ID="txtunm" runat="server" Width="150px" Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtunm" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lbl1">
                Password:</td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" Width="150px" TextMode="Password" 
                    Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpass" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lbl1">
                Re-type Password:</td>
            <td>
                <asp:TextBox ID="txtrpwd" runat="server" Height="22px" Width="150px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtrpwd" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lbl1">
                SequrityQuestion:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px">
                    <asp:ListItem>What is your nick Name?</asp:ListItem>
                    <asp:ListItem>Which is your favourite movie?</asp:ListItem>
                    <asp:ListItem>Which is your favourite Color</asp:ListItem>
                    <asp:ListItem>Which is your favourite bike?</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="lbl1">
                Answer:</td>
            <td>
                <asp:TextBox ID="txtans" runat="server" Width="173px" Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtans" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnuser" runat="server" Text="Create User" 
                    onclick="btnuser_Click" SkinID="but"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" SkinID="but" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <span class="style4">If You Want to Save Your
                <asp:HyperLink ID="HyperLink11" runat="server" 
                    NavigateUrl="~/Registration/PersonalInfo.aspx">Personal Information</asp:HyperLink>
                </span>?</td>
        </tr>
    </table>
</asp:Content>

