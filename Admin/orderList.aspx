<%@ Page Title="Order List" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="orderList.aspx.cs" Inherits="Admin_orderList" Theme="SkinFile"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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
        text-align: left;
    }
    .style3
    {
        font-size: medium;
        font-family: Times New Roman Greek;
        font-weight: bold;
        color: Purple;
        width: 203px;
        text-align: right;
    }
    .style4
    {
        font-size: medium;
        font-family: Times New Roman Greek;
        font-weight: bold;
        color: Purple;
        text-align: right;
        width: 200px;
    }
    .styBut
    {
        background-color:Green;
        Border-Color:Yellow; 
        Border-Style:Solid; 
        Border-Width:1px;
        font-weight:bold; 
        font-family:Franklin Gothic Book;
        Font-Size:small; 
        Color:White; 
        Height:25px;
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
            <td colspan="2" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="it">
                Order List</td>
        </tr>
        <tr>
            <td style="text-align: right; color: #800080; font-weight: bold; font-size: medium;" 
                width="150">
                Filter By:</td>
            <td width="400">
                <asp:DropDownList ID="ddlFilter" runat="server" AutoPostBack="True" 
                    Height="22px" Width="120px" 
                    onselectedindexchanged="ddlFilter_SelectedIndexChanged">
                    <asp:ListItem>Order Date</asp:ListItem>
                    <asp:ListItem>Order Amount</asp:ListItem>
                    <asp:ListItem>E-Mail Id</asp:ListItem>
                    <asp:ListItem>Order Status</asp:ListItem>
                    <asp:ListItem>Order Id</asp:ListItem>
                    <asp:ListItem>All Order</asp:ListItem>
                </asp:DropDownList>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Panel ID="Panel1" runat="server" style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="frmDate" runat="server" 
                        Text="From Date:"></asp:Label>
                    <asp:TextBox ID="txtfrmDate" runat="server" SkinID="txt" Height="22px"></asp:TextBox>
                    <cc1:CalendarExtender ID="txtfrmDate_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtfrmDate">
                    </cc1:CalendarExtender>
                    &nbsp;<asp:Label ID="toDate" runat="server" Text="To Date:"></asp:Label>
                    <asp:TextBox ID="txtToDate" runat="server" SkinID="txt" Height="22px"></asp:TextBox>
                    <cc1:CalendarExtender ID="txtToDate_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtToDate">
                    </cc1:CalendarExtender>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Panel ID="Panel2" runat="server" style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblAmount" runat="server" Text="Enter Amount:"></asp:Label>
                    <asp:DropDownList ID="ddlAmount" runat="server" Height="22px" Width="120px">
                        <asp:ListItem>Less Then</asp:ListItem>
                        <asp:ListItem>Greater Then</asp:ListItem>
                        <asp:ListItem>Equal To</asp:ListItem>
                        <asp:ListItem>Not Equal To</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txtAmount" runat="server" SkinID="txt" Height="22px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtAmount" ErrorMessage="Enter Only Numeric Values" 
                        Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]*" 
                        Font-Size="Small"></asp:RegularExpressionValidator>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Panel ID="Panel3" runat="server" style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblemail" runat="server" Text="Enter E-Mail Id:"></asp:Label>
                    <asp:DropDownList ID="ddlemail" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="email" DataValueField="email" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:TextBox ID="txtemail" runat="server" SkinID="txt" Height="22px" 
                        Width="180px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Enter Proper E-Mail ID " 
                        Font-Bold="True" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        Font-Size="Small"></asp:RegularExpressionValidator>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [email] FROM [login]"></asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Panel ID="Panel4" runat="server" style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblStatus" runat="server" Text="Order Status:"></asp:Label>
                    <asp:DropDownList ID="ddlStatus" runat="server" Height="22px" Width="100px">
                        <asp:ListItem>In Process</asp:ListItem>
                        <asp:ListItem>Shipped</asp:ListItem>
                        <asp:ListItem>Delivered</asp:ListItem>
                        <asp:ListItem>Cancelled</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Panel ID="Panel5" runat="server" style="text-align: left">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblOid" runat="server" Text="Select Order Id:"></asp:Label>
                    <asp:DropDownList ID="ddlId" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="order_Id" DataValueField="order_Id" Height="22px" Width="50px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [order_Id] FROM [OrderShipping]"></asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="btnShowOrder" runat="server" SkinID="but" Text="Show Order" 
                    onclick="btnShowOrder_Click" style="text-align: center" />
            </td>
        </tr>
    </table>
    <table class="style1">
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
            <td style="text-align: center">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="margin-left: 40px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    Width="89%" BorderColor="Silver" BorderStyle="Solid" OnRowDeleting="GridView1_Deleting"
                    BorderWidth="1px" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField HeaderText="Order No" DataField="order_Id" ReadOnly="True" >
                        <ControlStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Left" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Bold="False" Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="E-Mail" DataField="email" ReadOnly="True" >
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Left" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Order Date" DataField="order_date" ReadOnly="True" >
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Left" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Order Amount" DataField="subTotal" >
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Left" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Order Status" DataField="order_Status" >
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Left" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:CommandField ButtonType="Button" SelectText="Delete" 
                            ShowSelectButton="True" >
                        <ControlStyle CssClass="styBut" />
                        </asp:CommandField>
                    </Columns>
                    <EmptyDataTemplate>
                        <span class="style4">
                        <strong style="color: #FF0000; font-weight: bold; font-size: medium; text-align: center;">
                        &nbsp;No Orders Found...</strong></span>
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="#1F7A9C" BorderStyle="None" Font-Bold="False" 
                        Font-Size="Medium" HorizontalAlign="Left" ForeColor="White" />
                </asp:GridView>
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

