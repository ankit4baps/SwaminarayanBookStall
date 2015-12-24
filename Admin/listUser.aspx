<%@ Page Title="User List" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="listUser.aspx.cs" Inherits="Admin_listUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .it
    {
        font-size: xx-large;
        font-family: Times New Roman Greek;
        font-weight: bolder;
        color: Green;
        height: 43px;
        text-align: left;
        }
        .style3
        {
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="it">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center" class="it">
                All Users</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="email" 
                    DataSourceID="SqlDataSource1" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="email" HeaderText="E-Mail" ReadOnly="True" 
                            SortExpression="email" />
                        <asp:BoundField DataField="fname" HeaderText="First Name" 
                            SortExpression="fname" />
                        <asp:BoundField DataField="lname" HeaderText="Last Name" 
                            SortExpression="lname" />
                        <asp:BoundField DataField="mno" HeaderText="Mobile No." SortExpression="mno" />
                    </Columns>
                    <FooterStyle BackColor="Yellow" />
                    <HeaderStyle BackColor="Red" />
                    <PagerStyle BackColor="Yellow" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [email], [fname], [lname], [mno] FROM [personalInfo]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

