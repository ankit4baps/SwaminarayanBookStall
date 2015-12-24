<%@ Page Title="FeedBack Check" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminFeedbackCheck.aspx.cs" Inherits="FeedbackCheck" Theme="SkinFile"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .st
    {
        width: 100%;
        text-align: center;
        height: 580px;
    }
    .it
    {
        font-size: xx-large;
        font-family: Times New Roman Greek;
        font-weight: bolder;
        color: Green;
        height: 43px;
    }
    .la
    {
        font-family: Times New Roman;
        font-size: xx-large;
        font-weight: bold;
        color: #008000;
        text-align: center;
    }
        .style5
        {
        font-size: medium;
        text-align: left;
    }
        .style8
    {
        width: 144px;
        font-weight: bold;
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
        Font-Size:small; 
        Color:White; 
        Height:25px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
   

    
    <table class="style1">
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">

    
    <asp:Label ID="Label10" runat="server" Text="Feedback" CssClass="la"></asp:Label>
    
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [feedback_dtl]" 
                    DeleteCommand="DELETE FROM feedback_dtl WHERE (email = @email)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" DefaultValue="" Name="@email" 
                PropertyName="SelectedValue" />
        </DeleteParameters>
                </asp:SqlDataSource>


            </td>
        </tr>
        <tr>
            <td style="text-align: center">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="email" 
        DataSourceID="SqlDataSource1" PageSize="2" ShowHeader="False" 
        Width="100%" BorderColor="Black" BorderStyle="Solid" 
        style="margin-right: 0px" BorderWidth="1px">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <input type="button" value="Delete" 
    onclick="javascript:__doPostBack(&#39;GridView1&#39;,&#39;Delete$0&#39;)" 
    class="styBut" />
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="style1" 
                        style="border: thin solid #FFFFFF; background-color: #FFFF99;">
                        <tr>
                            <td class="style8" style="border: 2px solid #FFFFFF">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label11" runat="server" Text="E-mail"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                            </td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" style="border: 2px solid #FFFFFF">
                                Book Variety&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                            </td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("book_variety") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" style="border: 2px solid #FFFFFF">
                                Web Ratings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("web_rat") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" style="border: 2px solid #FFFFFF">
                                Remarks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                            </td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("remarks") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" style="border: 2px solid #FFFFFF">
                                Satisfiction&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; :</td>
                            <td class="style5" style="border: 2px solid #FFFFFF">
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("satis") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" >
            <ControlStyle CssClass="styBut" />
            </asp:CommandField>
        </Columns>
        <PagerStyle BorderStyle="Solid" HorizontalAlign="Center" BorderColor="Black" 
            BorderWidth="1px" />
    </asp:GridView>
          
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
        </table>
 </asp:Content>

