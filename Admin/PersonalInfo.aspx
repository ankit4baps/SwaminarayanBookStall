<%@ Page Title="Personal Information" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="PersonalInfo.aspx.cs" Inherits="Registration_PersonalInfo" Theme="SkinFile"%>

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
    .lbl1
    {
        font-size: medium;
        font-family: Times New Roman Greek;
        font-weight: bold;
        color: Purple;
        width: 377px;
        text-align: right;
    }
    .style2
    {
        font-size: medium;
        font-family: Times New Roman Greek;
        font-weight: bold;
        color: Purple;
        width: 236px;
        text-align: right;
    }
    .style3
    {
        text-align: left;
        }
        .style4
        {
            font-size: medium;
        }
    .style5
    {
        text-align: left;
        width: 236px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="it">
                Personal Information</td>
        </tr>
        <tr>
            <td class="style2">
                E-Mail:</td>
            <td class="style3">
                <asp:TextBox ID="txtemail" runat="server" Height="22px" Width="180px" 
                    Enabled="False" SkinID="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                FirstName:</td>
            <td class="style3">
                <asp:TextBox ID="txtfnm" runat="server" Width="180px" SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtfnm" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtfnm" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                LastName:</td>
            <td class="style3">
                <asp:TextBox ID="txtlnm" runat="server" Width="180px" SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtlnm" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtlnm" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Gender:</td>
            <td class="style3">
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Text="Male" 
                    GroupName="g" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="g" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                BirthDate:</td>
            <td class="style3">
                <asp:TextBox ID="txtbd" runat="server" SkinID="txt" Width="180px"></asp:TextBox>
                <cc1:CalendarExtender ID="txtbd_CalendarExtender" runat="server" Enabled="True" 
                    TargetControlID="txtbd">
                </cc1:CalendarExtender>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtbd" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                MobileNumber:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="22px" 
                    Width="30px" SkinID="txt">+91</asp:TextBox>
                <asp:TextBox ID="txtmno" runat="server" Width="140px" SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtmno" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtmno" ErrorMessage="Enter Proper 10 Digited Mobile Number" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{10}" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                LandLineNumber:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False" Height="22px" 
                    Width="30px" SkinID="txt">+91</asp:TextBox>
                <asp:TextBox ID="txtlno" runat="server" Height="22px" Width="140px" 
                    SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtlno" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtlno" ErrorMessage="Enter Proper Number with STD Code" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{10}" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="btninfo" runat="server" Text="Save Information" 
                    SkinID="but" ValidationGroup="a" onclick="btninfo_Click"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" 
                    runat="server" Text="Cancel" SkinID="but" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                If You Want to Save Your
                <asp:HyperLink ID="HyperLink11" runat="server" 
                    NavigateUrl="~/Admin/AddressDetail.aspx">Address Detail</asp:HyperLink>
                </span>?</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

