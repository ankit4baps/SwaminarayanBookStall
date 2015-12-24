<%@ Page Title="Shipping Address" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="orderShippingAddress.aspx.cs" Inherits="Admin_orderShippingAddress" Theme="SkinFile"%>

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
        text-align: right;
    }
    .style6
    {
            width: 129px;
    }
    
        .style7
        {
            width: 412px;
        }
        .style8
        {
            height: 42px;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 780px">
        <tr>
            <td colspan="2" style="text-align: center" class="style8">
                </td>
            <td style="text-align: center" class="style8">
                </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center" class="it">
&nbsp;Order Shipping Address</td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; color: #800080; font-size: medium; font-weight: bold;">
                Order Id:</td>
            <td class="style7">
                <asp:DropDownList ID="ddlId" runat="server" Height="22px" 
                    Width="50px" DataSourceID="SqlDataSource1" DataTextField="order_Id" 
                    DataValueField="order_Id">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnShow" runat="server" onclick="btnShow_Click" Text="Show" 
                    SkinID="but" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; color: #800080; font-size: medium; font-weight: bold;">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [order_Id] FROM [OrderShipping]"></asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" Width="100%" 
                    style="margin-top: 0px">
                    <ItemTemplate>
                        <table class="style1">
                            <tr>
                                <td style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    E-Mail:</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("email") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td 
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    Order_Id:</td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("order_Id") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td  
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    Name:</td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("name") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td 
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    Address:</td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("address") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td  
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    City:</td>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("city") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td 
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    Taluka:</td>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("taluka") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td 
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    Dist:</td>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("dist") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td 
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    State:</td>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("state") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td 
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    Country:</td>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("country") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td 
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    Pin Code:</td>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("pin") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td 
                                    style="text-align: right; color: #800080; font-size: medium; font-weight: bold" 
                                    width="120px">
                                    Mobile No:</td>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("moNo") %>' 
                                        Font-Bold="True" Font-Size="Medium"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:FormView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

