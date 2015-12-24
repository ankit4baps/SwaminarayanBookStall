<%@ Page Title="English Publication" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="English.aspx.cs" Inherits="Publication_English" Theme="SkinFile"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

       .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 153px;
            text-align: center;
        }
        .style6
        {
            width: 133px;
            font-weight: bold;
            font-size: medium;
        }
        .style5
        {
            font-size: medium;
        }
        .styBut
        {
            background-color:Green;
            Border-Color:Yellow; 
            Border-Style:Solid; 
            Border-Width:1px;
            font-weight:bold; 
            font-family:Franklin Gothic Book;
            Font-Size:medium; 
            Color:White; 
            Height:25px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="book_id" 
        DataSourceID="SqlDataSource1" PageSize="2" ShowHeader="False" 
        Width="980px" BorderColor="White" BorderStyle="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table class="style1" 
                        style="border: thin solid #FFFFFF; background-color: #FFFF99;">
                        <tr>
                            <td class="style4" rowspan="6">
                                <asp:Image ID="Image1" runat="server" Height="151px" 
                                    ImageUrl='<%# Eval("photo", "~/Image/{0}") %>' Width="134px" />
                            </td>
                            <td class="style6" style="border: 2px solid #FFFFFF">
                                Book Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                            </td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("book_id") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="border: 2px solid #FFFFFF">
                                Book Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                            </td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("book_nm") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="border: 2px solid #FFFFFF">
                                Author&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("author") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="border: 2px solid #FFFFFF">
                                Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                            </td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" style="border: 2px solid #FFFFFF">
                                Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("descr") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                            </td>
                            <td class="style5">
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
           <asp:CommandField ButtonType="Button" SelectText="Add To Cart" 
                ShowSelectButton="True" >
            <ControlStyle CssClass="styBut" />
            <ItemStyle BackColor="#FFFF99" BorderColor="Black" BorderStyle="Solid" 
                BorderWidth="1px" ForeColor="#FFFF99" HorizontalAlign="Center" 
                VerticalAlign="Middle" Width="150px" />
            </asp:CommandField>
        </Columns>
        <PagerStyle BorderStyle="None" HorizontalAlign="Center" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT * FROM [book_mst] WHERE (stock > 0) AND ([book_id] LIKE '%' + @book_id + '%')" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
        <SelectParameters>
            <asp:Parameter DefaultValue="E" Name="book_id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

