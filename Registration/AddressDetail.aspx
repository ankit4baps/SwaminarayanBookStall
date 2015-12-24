<%@ Page Title="Address Detail" Language="C#" MasterPageFile="~/custmaster.master" AutoEventWireup="true" CodeFile="AddressDetail.aspx.cs" Inherits="Registration_AddressDetail" Theme="SkinFile"%>

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
    .style2
    {
            font-size: medium;
            font-family: Times New Roman Greek;
            font-weight: bold;
            color: Purple;
            width: 300px;
            text-align: right;
        }
    .style3
    {
        }
        .style4
        {
            font-size: medium;
        }
        .style5
        {
            width: 300px;
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
                Address Detail</td>
        </tr>
        <tr>
            <td class="style2">
                E-Mail:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="22px" Width="180px" 
                    Enabled="False" SkinID="txt"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="style2">
                Name:</td>
            <td>
                <asp:TextBox ID="txtfnm" runat="server" Width="180px" 
                    SkinID="txt" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                StreetAddress:</td>
            <td>
                <asp:TextBox ID="txtstadd" runat="server" Width="180px" TextMode="MultiLine" 
                    Height="45px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtstadd" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City:</td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" SkinID="txt" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Taluka:</td>
            <td>
                <asp:TextBox ID="txtta" runat="server" SkinID="txt" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtta" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtta" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Dist:</td>
            <td>
                <asp:TextBox ID="txtdist" runat="server" Width="180px" Height="22px" 
                    SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtdist" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtdist" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                State:</td>
            <td>
                <asp:TextBox ID="txtstate" runat="server" Height="22px" Width="180px" 
                    SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtstate" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtstate" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Country:</td>
            <td>
                <asp:TextBox ID="txtco" runat="server" Enabled="False" Height="22px" 
                    Width="180px" SkinID="txt">India</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                PinCode:</td>
            <td>
                <asp:TextBox ID="txtpin" runat="server" SkinID="txt" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtpin" ErrorMessage="Enter proper 6 digited PinCode" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{6}" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnuser" runat="server" Text="Save Address" 
                    SkinID="but" ValidationGroup="a" onclick="btnuser_Click"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" 
                    runat="server" Text="Cancel" SkinID="but" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                If You Want to Save Your
                <asp:HyperLink ID="HyperLink11" runat="server" 
                    NavigateUrl="~/Registration/PersonalInfo.aspx">Personal Information</asp:HyperLink>
                </span>?</td>
        </tr>
    </table>
</asp:Content>

