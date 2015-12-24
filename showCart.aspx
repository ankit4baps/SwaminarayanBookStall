<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showCart.aspx.cs" Inherits="showCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 649px;
        }
        .it
        {
            width: 535px;
            font-size: x-large;
            font-family: Times New Roman Greek;
            font-weight: bolder;
            color: Green;
            height: 43px;
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
        .style4
        {
            font-size: medium;
        }
        .style5
        {
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                Your Shopping Cart</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                    Width="100%" OnRowEditing="GridView1_Editing" 
                    OnRowUpdating="GridView1_Updating" OnRowCancelingEdit="GridView1_CancleEdit" 
                    OnRowDeleting="GridView1_Deleting" BorderColor="Silver" BorderStyle="Solid" 
                    BorderWidth="1px">
                    <Columns>
                        <asp:BoundField HeaderText="Book Id" DataField="book_id" ReadOnly="True" >
                        <ControlStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                        <HeaderStyle BorderStyle="None" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Book Name" DataField="book_nm" ReadOnly="True" >
                        <HeaderStyle BorderStyle="None" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Price(Rs.)" DataField="price" ReadOnly="True" >
                        <HeaderStyle BorderStyle="None" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Quantity" DataField="quantity" >
                        <HeaderStyle BorderStyle="None" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Total" DataField="SubTotal" ReadOnly="True" >
                        <HeaderStyle BorderStyle="None" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                            ShowEditButton="True" >
                        <ControlStyle CssClass="styBut" />
                        <HeaderStyle BorderStyle="None" />
                        <ItemStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:CommandField>
                    </Columns>
                    <EmptyDataTemplate>
                        <span class="style4"><strong>Ooops!! Your Shopping Cart is Empty... </strong>
                        </span>
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="#F0F0F0" BorderStyle="None" Font-Bold="False" 
                        Font-Size="Medium" HorizontalAlign="Left" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2" style="font-size: medium; font-weight: bold;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Grand Total: 
                Rs.<asp:Label ID="lblTot" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3" style="color:Red">
                <marquee>All Items are available now Cash On Delivery....</marquee></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="btnShopping" runat="server" BackColor="#185D77" 
                    BorderStyle="None" Font-Bold="True" ForeColor="White" Height="30px" 
                    PostBackUrl="~/Home.aspx" Text="Continue Shoppping" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCheckOut" runat="server" BackColor="#185D77" 
                    BorderStyle="None" Font-Bold="True" ForeColor="White" Height="30px" 
                    PostBackUrl="~/CheckOut.aspx" Text="Checkout" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
</div>
</asp:Content>

