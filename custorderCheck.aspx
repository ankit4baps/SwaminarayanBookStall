<%@ Page Title="Order Check" Language="C#" MasterPageFile="~/CustMaster.master" AutoEventWireup="true" CodeFile="custorderCheck.aspx.cs" Inherits="orderCheck" Theme="SkinFile"%>

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
            text-align: center;
        }
        .style4
        {
            font-size: medium;
            font-family: Times New Roman Greek;
            font-weight: bold;
            color: Purple;
            width: 117px;
            text-align: right;
        }
        .style3
        {
            width: 117px;
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
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="it">
                My Order</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                My Order Id:</td>
            <td>
                <asp:DropDownList ID="ddlId" runat="server" AutoPostBack="True" Height="22px" 
                    Width="50px" onselectedindexchanged="ddlId_SelectedIndexChanged">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnShow" runat="server" onclick="btnShow_Click" Text="Show" 
                    SkinID="but" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    Width="89%" BorderColor="Silver" BorderStyle="Solid" 
                    BorderWidth="1px">
                    <Columns>
                        <asp:BoundField HeaderText="Book Id" DataField="item_id" ReadOnly="True" >
                        <ControlStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Left" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Bold="False" Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Book Name" DataField="item_nm" ReadOnly="True" >
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Left" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Price" DataField="price" ReadOnly="True" >
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Left" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Quantity" DataField="quantity" >
                        <HeaderStyle BorderStyle="None" HorizontalAlign="Left" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" 
                            Font-Size="Medium" />
                        </asp:BoundField>
                    </Columns>
                    <EmptyDataTemplate>
                        <span class="style4"><strong>&nbsp;</strong></span>
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="#1F7A9C" BorderStyle="None" Font-Bold="False" 
                        Font-Size="Medium" HorizontalAlign="Left" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
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

