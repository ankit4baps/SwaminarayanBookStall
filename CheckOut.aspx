<%@ Page Title="Check Out" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" Theme="SkinFile"%>

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
        .it1
        {
            font-size: large;
            font-family: Times New Roman Greek;
            font-weight: bolder;
            color: Green;
            text-align: center;
        }
        .style6
        {
        text-align: left;
        width: 197px;
    }
        .style8
        {
            text-align: center;
        }
        .style11
        {
            font-size: medium;
            font-family: Times New Roman Greek;
            font-weight: bold;
            color: Purple;
            text-align: right;
            width: 143px;
        }
        .style14
        {
        font-size: medium;
        font-family: Times New Roman Greek;
        font-weight: bold;
        color: Purple;
        text-align: right;
        width: 173px;
    }
        .style15
        {
        width: 197px;
    }
        .style3
        {
            width: 649px;
            font-size: x-large;
            font-family: Times New Roman Greek;
            font-weight: bolder;
            color: Green;
            height: 43px;
        }
    .style16
    {
        width: 173px;
    }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
       
    <table class="style1">
        <tr>
            <td colspan="4" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center" class="it">
                Submit Shipping Address</td>
        </tr>
        <tr>
            <td colspan="2" class="bb">
                This is your Saved Address....&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="CheckBox1" runat="server" 
                    Text="Copy Address To Shipping Address" AutoPostBack="True" 
                    oncheckedchanged="CheckBox1_CheckedChanged" />
            </td>
            <td class="style8">
                &nbsp;</td>
            <td style="font-size: medium; color: #800080;">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red" style="text-align: right"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="it1" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                Address Detail...</td>
            <td colspan="2" style="text-align: left; font-size: x-large" class="it1">
                Shipping Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" 
                    CssClass="style11" Text="Order Id:"></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:Label>
                &nbsp; </td>
        </tr>
        <tr>
            <td class="style14">
                E-Mail:</td>
            <td class="style6" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:TextBox ID="txtemail" runat="server" Height="22px" Width="180px" 
                    Enabled="False" SkinID="txt"></asp:TextBox>
                
            </td>
            <td class="style11">
                E-Mail:</td>
            <td>
                <asp:TextBox ID="txtemail0" runat="server" Height="22px" Width="180px" 
                    Enabled="False" SkinID="txt"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="style14">
                Name:</td>
            <td class="style6" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:TextBox ID="txtfnm" runat="server" Width="150px" Enabled="False" 
                    SkinID="txt"></asp:TextBox>
            </td>
            <td class="style11">
                Name:</td>
            <td>
                <asp:TextBox ID="txtfnm0" runat="server" Width="180px" 
                    SkinID="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                StreetAddress:</td>
            <td class="style6" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:TextBox ID="txtstadd" runat="server" Width="150px" TextMode="MultiLine" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td class="style11">
                Street Address:</td>
            <td>
                <asp:TextBox ID="txtstadd0" runat="server" Width="150px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtstadd0" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                City:</td>
            <td class="style6" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:TextBox ID="txtcity" runat="server" SkinID="txt" Enabled="False"></asp:TextBox>
            </td>
            <td class="style11">
                City:</td>
            <td>
                <asp:TextBox ID="txtcity0" runat="server" SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtcity0" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcity0" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Taluka:</td>
            <td class="style6" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:TextBox ID="txtta" runat="server" SkinID="txt" Enabled="False"></asp:TextBox>
            </td>
            <td class="style11">
                Taluka:</td>
            <td>
                <asp:TextBox ID="txtta0" runat="server" SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtta0" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtta0" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Dist:</td>
            <td class="style6" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:TextBox ID="txtdist" runat="server" Width="128px" Height="22px" 
                    SkinID="txt" Enabled="False"></asp:TextBox>
            </td>
            <td class="style11">
                Dist:</td>
            <td>
                <asp:TextBox ID="txtdist0" runat="server" Width="128px" Height="22px" 
                    SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtdist0" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtdist0" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                State:</td>
            <td class="style6" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:TextBox ID="txtstate" runat="server" Height="22px" Width="150px" 
                    SkinID="txt" Enabled="False"></asp:TextBox>
            </td>
            <td class="style11">
                State:</td>
            <td>
                <asp:TextBox ID="txtstate0" runat="server" Height="22px" Width="150px" 
                    SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtstate0" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtstate0" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style14">
                Country:</td>
            <td class="style6" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:TextBox ID="txtco" runat="server" Enabled="False" Height="22px" 
                    Width="100px" SkinID="txt">India</asp:TextBox>
            </td>
            <td class="style11">
                Country:</td>
            <td>
                <asp:TextBox ID="txtco0" runat="server" Enabled="False" Height="22px" 
                    Width="100px" SkinID="txt">India</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                PinCode:</td>
            <td class="style6" 
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:TextBox ID="txtpin" runat="server" SkinID="txt" Enabled="False"></asp:TextBox>
            </td>
            <td class="style11">
                Pincode:</td>
            <td>
                <asp:TextBox ID="txtpin0" runat="server" SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtpin0" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtpin0" ErrorMessage="Enter proper 6 digited PinCode" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{6}" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15" 
                
                
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                &nbsp;</td>
            <td class="style11">
                Mobile Number:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="30px">+91</asp:TextBox>
                <asp:TextBox ID="txtmno" runat="server" SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtmno" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="txtmno" ErrorMessage="Enter Proper 10 Digited Mobile Number" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{10}" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15" 
                
                
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                &nbsp;</td>
            <td colspan="2" style="font-size: medium; font-weight: bold;">
                Your Items are delivered to Address provided here....</td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style15" 
                
                
                style="border-right-style: solid; border-right-width: 1px; border-right-color: #C0C0C0;">
                <asp:Button ID="btnCart" runat="server" Text="Back To Cart" SkinID="but" 
                    PostBackUrl="~/showCart.aspx" />
            </td>
            <td class="style8" colspan="2">
                <asp:Button ID="btnsubAdd" runat="server" Text="Place Order" 
                    SkinID="but" onclick="btnsubAdd_Click" ValidationGroup="a" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCan" runat="server" Text="Cancel" SkinID="but" 
                    onclick="btnCan_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="4" style="color: Red">
                <marquee style="width: 960px">All Items are available now Cash On Delivery....</marquee></td>
        </tr>
    </table>
       
</div>
</asp:Content>

