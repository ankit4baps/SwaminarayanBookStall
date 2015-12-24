<%@ Page Title="SiteMap" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sitemap.aspx.cs" Inherits="Sitemap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="it">
                SiteMap</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" 
                    ImageSet="Arrows" Width="100%">
                    <HoverNodeStyle Font-Bold="True" Font-Underline="False" ForeColor="Red" />
                    <NodeStyle Font-Bold="False" Font-Names="Tahoma" Font-Size="10pt" 
                        ForeColor="#FF6600" HorizontalPadding="5px" NodeSpacing="0px" 
                        VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="True" Font-Size="Medium" ForeColor="#CC00FF" />
                    <RootNodeStyle Font-Bold="True" Font-Size="Large" ForeColor="Red" />
                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                        HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

