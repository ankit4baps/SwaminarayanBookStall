<%@ Page Title="Order Status" Language="C#" MasterPageFile="~/custMaster.master" AutoEventWireup="true" CodeFile="custOrderStatus.aspx.cs" Inherits="custOrderStatus" Theme="SkinFile"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



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
            width: 300px;
        }
        .style4
        {
            font-size: medium;
            font-family: Times New Roman Greek;
            font-weight: bold;
            color: Purple;
            text-align: right;
        }
        .style5
        {
            width: 300px;
            height: 35px;
        }
        .style6
        {
            height: 35px;
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
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center" class="it">
                Order Status</td>
    </tr>
    <tr>
        <td class="style4">
                Select
                Order Id:</td>
        <td>
            <asp:DropDownList ID="ddlId" runat="server" AutoPostBack="True" Height="22px" 
                Width="50px" onselectedindexchanged="ddlId_SelectedIndexChanged">
            </asp:DropDownList>
        &nbsp;<asp:Button ID="btnShowOrder" runat="server" SkinID="but" Text="Show" 
                    onclick="btnShowOrder_Click" style="text-align: center" />
        </td>
    </tr>
    <tr>
        <td class="style4">
                Email Id:</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server" Width="200px" SkinID="txt" 
                Height="22px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
                Order Date:</td>
        <td>
            <asp:TextBox ID="txtodate" runat="server" Width="150px" SkinID="txt" 
                Height="22px" Enabled="False"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
                Order Status:</td>
        <td>
            <asp:TextBox ID="txtorderStatus" runat="server" Height="25px" Width="94px" SkinID="txt" 
                    Enabled="False" Font-Bold="True" Font-Size="Large"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            </td>
        <td class="style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
</table>
</asp:Content>

