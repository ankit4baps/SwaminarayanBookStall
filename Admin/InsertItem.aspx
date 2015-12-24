<%@ Page Title="Insert Item" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="InsertItem.aspx.cs" Inherits="Admin_InsertItem" Theme="SkinFile"%>
<%--<%@ Register Src="~/Admin/InsertItem.ascx" TagName="InsertItem1" TagPrefix="IT1" %>
--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
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
            <td colspan="2" style="text-align: left" class="it">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Insert New Item</td>
        </tr>
        <tr>
            <td class="style2">
                Select Category:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Gujarati</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Hindi</asp:ListItem>
                    <asp:ListItem>Marathi</asp:ListItem>
                    <asp:ListItem>Audio CDs</asp:ListItem>
                    <asp:ListItem>MP3</asp:ListItem>
                    <asp:ListItem>DVDs</asp:ListItem>
                    <asp:ListItem>Satsang Darshan</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" Font-Size="Medium" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Item Id:</td>
            <td>
                <asp:TextBox ID="txtCode" runat="server" Enabled="False" Font-Bold="True" 
                    ForeColor="Red" SkinID="txt" Width="30px"></asp:TextBox>
                <asp:TextBox ID="txtbid" runat="server" Height="22px" Width="94px" SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtbid" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" Font-Size="Medium" ValidationGroup="a"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                    runat="server" ControlToValidate="txtbid" 
                    ErrorMessage="Enter valid Item Id, Only 4 digit" Font-Bold="True" 
                    ForeColor="Red" ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
                <asp:Label ID="Label5" runat="server" Text="Enter Only 3 Digited Item Id." 
                    Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Item Name:</td>
            <td>
                <asp:TextBox ID="txtbnm" runat="server" Width="150px" SkinID="txt" 
                    Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtbnm" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
            Author:</td>
            <td>
                <asp:TextBox ID="txtaut" runat="server" Width="150px" SkinID="txt" 
                    Height="22px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtaut" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
            Price:</td>
            <td>
                <asp:TextBox ID="txtpri" runat="server" Height="22px" Width="94px" SkinID="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtpri" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
            Description:</td>
            <td>
                <asp:TextBox ID="txtdesc" runat="server" Width="200px" Height="50px" 
                TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtdesc" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
            Image:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" Font-Bold="False" Font-Size="Medium" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
        <td class="style2">
            Stock:</td>
        <td>
            <asp:TextBox ID="txtstk" runat="server" Height="22px" Width="94px" SkinID="txt"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtstk" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txtstk" ErrorMessage="Enter Only Numeric" Font-Bold="True" 
                ForeColor="Red" ValidationExpression="[0-9]*" ValidationGroup="a"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnisert" runat="server" Text="Insert" 
                    onclick="btnisert_Click" SkinID="but" ValidationGroup="a" Height="22px"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" SkinID="but" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
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
            width: 226px;
            text-align: right;
        }
        .style3
        {
            width: 226px;
        }
    .style4
    {
        width: 226px;
        height: 35px;
    }
    .style5
    {
        height: 35px;
    }
    </style>
</asp:Content>


