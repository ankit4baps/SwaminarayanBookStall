<%@ Page Title="Order Status" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="orderStatusUpdate.aspx.cs" Inherits="Admin_orderStatusUpdate" Theme="SkinFile"%>

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
        .style2
        {
        font-size: medium;
        font-family: Times New Roman Greek;
        font-weight: bold;
        color: Purple;
        width: 296px;
        text-align: right;
    }
        .style3
        {
        width: 296px;
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
                Order Status Update</td>
        </tr>
        <tr>
            <td class="style2">
                Select
                Order Id:</td>
            <td>
                <asp:DropDownList ID="ddlId" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="order_Id" 
                    DataValueField="order_Id" Height="22px" 
                    onselectedindexchanged="ddlId_SelectedIndexChanged1" Width="50px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [order_Id] FROM [OrderShipping]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Order Id:</td>
            <td>
                <asp:TextBox ID="txtoid" runat="server" Height="22px" Width="94px" SkinID="txt" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Email Id:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="150px" SkinID="txt" 
                Height="22px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Order Date:</td>
            <td>
                <asp:TextBox ID="txtodate" runat="server" Width="150px" SkinID="txt" 
                Height="22px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Order Amount:</td>
            <td>
                <asp:TextBox ID="txtoamount" runat="server" Height="22px" Width="94px" SkinID="txt" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Order Status:</td>
            <td>
                <asp:DropDownList ID="ddlStatus" runat="server" Width="100px" Height="22px">
                    <asp:ListItem>In Process</asp:ListItem>
                    <asp:ListItem>Shipped</asp:ListItem>
                    <asp:ListItem>Delivered</asp:ListItem>
                    <asp:ListItem>Cancelled</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="ddlStatus" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" Font-Bold="False" Font-Size="Medium" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
            &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style3">
            &nbsp;</td>
            <td>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                onclick="btnUpdate_Click" SkinID="but" ValidationGroup="a" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCan" runat="server" SkinID="but" Text="Cancel" 
                onclick="btnCan_Click" />
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
        <tr>
            <td class="style3">
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

