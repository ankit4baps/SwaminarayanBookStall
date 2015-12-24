<%@ Page Title="Search" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" Theme="SkinFile"%>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 325px;
            text-align: center;
        }
        .style4
        {
            text-align: center;
        }
        .style6
        {
            width: 20px;
        }
        .style7
        {
            width: 222px;
            text-align: center;
        }
        .style8
        {
            width: 67px;
            text-align: center;
        }
        .styBut
        {
            background-color:Green;
            Border-Color:Yellow; 
            Border-Style:Solid; 
            Border-Width:1px;
            font-family:Franklin Gothic Book;
            Font-Size:small; 
            Color:White; 
            Height:25px;
            font-weight: bold;
        }
         .it
        {
            font-size: xx-large;
            font-family: Times New Roman Greek;
            font-weight: bolder;
            color: Green;
            height: 43px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    
    <table class="style1">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                    Font-Size="Medium"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="it" style="text-align: center">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/magnifierSearch.png" />
&nbsp;
                Search&nbsp;
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/magnifierSearch.png" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" style="text-align: right">
                &nbsp;</td>
            <td class="style8" style="text-align: right">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="130px" Height="22px">
                    <asp:ListItem>-----Search By-----</asp:ListItem>
                    <asp:ListItem>Item Id</asp:ListItem>
                    <asp:ListItem>Item Name</asp:ListItem>
                    <asp:ListItem>Author</asp:ListItem>
                    <asp:ListItem>Price</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtSearch" runat="server" Width="96%" SkinID="txt"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:Button ID="btnSearch" runat="server" Text="Search" SkinID="but" 
                    onclick="btnSearch_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style4" colspan="3">
                <asp:GridView ID="GridView1" runat="server" Width="100%"
                    AutoGenerateColumns="False" DataKeyNames="book_id">
                    <Columns>
                        <asp:BoundField DataField="book_id" HeaderText="Item Id" ReadOnly="True" 
                            SortExpression="book_id" >
                        <HeaderStyle Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField DataField="book_nm" HeaderText="Item Name" 
                            SortExpression="book_nm" >
                        <HeaderStyle Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField DataField="author" HeaderText="Author" 
                            SortExpression="author" >
                        <HeaderStyle Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" >
                        <HeaderStyle Font-Size="Medium" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#A51818" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
</div>
</asp:Content>

