<%@ Page Title="Delete Item" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="DeleteItem.aspx.cs" Inherits="Admin_DeleteItem" Theme="SkinFile"%>

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
&nbsp;Delete Item</td>
        </tr>
        <tr>
            <td class="style2">
            Select Item:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="book_id" DataValueField="book_id" 
                Width="100px" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [book_id] FROM [book_mst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style2">
            Item Id:</td>
            <td>
                <asp:TextBox ID="txtbid" runat="server" Height="22px" Width="94px" SkinID="txt" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
            Item Name:</td>
            <td>
                <asp:TextBox ID="txtbnm" runat="server" Width="170px" SkinID="txt" 
                Height="22px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
            Author:</td>
            <td>
                <asp:TextBox ID="txtaut" runat="server" Width="170px" SkinID="txt" 
                Height="22px" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
            Price:</td>
            <td>
                <asp:TextBox ID="txtpri" runat="server" Height="22px" Width="94px" SkinID="txt" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
            Description:</td>
            <td>
                <asp:TextBox ID="txtdesc" runat="server" Width="200px" Height="50px" 
                TextMode="MultiLine" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td class="style2">
            Stock:</td>
        <td>
            <asp:TextBox ID="txtstk" runat="server" Height="22px" Width="94px" SkinID="txt" 
                Enabled="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtstk" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txtstk" ErrorMessage="Enter Only Numeric" Font-Bold="True" 
                ForeColor="Red" ValidationExpression="[0-9]*" ValidationGroup="a"></asp:RegularExpressionValidator>
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
                <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                SkinID="but" onclick="btnDelete_Click" />
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
    </table>
</asp:Content>

