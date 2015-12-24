<%@ Page Title="Manage User" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="Admin_ManageUser" Theme="SkinFile"%>

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
        text-align: left;
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
            font-size: xx-large;
            font-family: Times New Roman Greek;
            font-weight: bolder;
            color: Green;
            height: 43px;
            text-align: left;
            width: 212px;
        }
        .style7
        {
            font-size: medium;
            font-family: Times New Roman Greek;
            font-weight: bold;
            color: Purple;
            text-align: right;
            width: 212px;
        }
        .style5
        {
            text-align: left;
        }
        .style8
        {
            width: 212px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="it">
                Manage User</td>
        </tr>
        <tr>
            <td class="style2">
                Select User Email:</td>
            <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="email" DataValueField="email" 
                Width="250px" AutoPostBack="True" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [email] FROM [personalInfo]"></asp:SqlDataSource>
            </td>
        </tr>
        </table>
    <table class="style1" __designer:mapid="97">
        <tr __designer:mapid="98">
            <td style="text-align: left" class="style6" __designer:mapid="99">
                Personal Info</td>
            <td __designer:mapid="9a">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="9b">
            <td class="style7" __designer:mapid="9c">
                E-Mail:</td>
            <td __designer:mapid="9d" class="style5">
                <asp:TextBox ID="txtemail" runat="server" SkinID="txt" 
                                                Text='<%# Eval("p.email") %>' Width="200px" 
                    Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="9e">
            <td class="style7" __designer:mapid="9f">
                First Name:</td>
            <td __designer:mapid="a0" class="style5">
                <asp:TextBox ID="txtfname" runat="server" SkinID="txt" 
                                                Text='<%# Eval("p.fname") %>' Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtfname" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtfname" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="a1">
            <td class="style7" __designer:mapid="a2">
                Last Name:</td>
            <td __designer:mapid="a3" class="style5">
                <asp:TextBox ID="txtlname" runat="server" SkinID="txt" 
                                                Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="a4">
            <td class="style7" __designer:mapid="a5">
                Mobile No:</td>
            <td __designer:mapid="a6" class="style5">
                <asp:TextBox ID="txtmno" runat="server" SkinID="txt" 
                                                Width="150px"></asp:TextBox>
                (e.g. 911234567890)<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtmno" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtmno" ErrorMessage="Enter Proper 10 Digited Mobile Number" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{12}" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="a7">
            <td class="style7" __designer:mapid="a8">
                landline No:</td>
            <td __designer:mapid="a9" class="style5">
                <asp:TextBox ID="txtlno" runat="server" SkinID="txt" 
                                                Width="150px"></asp:TextBox>
                (e.g.912398283415)<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtlno" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtlno" ErrorMessage="Enter Proper Number with STD Code" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{12}" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="aa">
            <td class="style7" __designer:mapid="ab">
                Gender:</td>
            <td __designer:mapid="ac" class="style5">
                <asp:TextBox ID="txtgender" runat="server" SkinID="txt" 
                                                Width="25px"></asp:TextBox>
                (Enter Only F or M)<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtgender" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="txtgender" ErrorMessage="Enter Only 'F' or 'M'" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[FM]" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="101">
            <td __designer:mapid="102" class="style7">
                Birth Date:</td>
            <td __designer:mapid="103" class="style5">
                <asp:TextBox ID="txtbdate" runat="server" SkinID="txt" 
                                                Width="150px"></asp:TextBox>
                <cc1:CalendarExtender ID="txtbdate_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtbdate">
                </cc1:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtbdate" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr __designer:mapid="b0">
            <td style="text-align: left" class="style6" __designer:mapid="b1">
                Address Detail</td>
            <td __designer:mapid="b2">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="b3">
            <td class="style7" __designer:mapid="b4">
                Street Address:</td>
            <td __designer:mapid="b5" class="style5">
                <asp:TextBox ID="txtstadd" runat="server" 
                                                TextMode="MultiLine" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtstadd" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr __designer:mapid="b6">
            <td class="style7" __designer:mapid="b7">
                City:</td>
            <td __designer:mapid="b8" class="style5">
                <asp:TextBox ID="txtcity" runat="server" SkinID="txt" 
                                                Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="b9">
            <td class="style7" __designer:mapid="ba">
                Taluka:</td>
            <td __designer:mapid="bb" class="style5">
                <asp:TextBox ID="txtta" runat="server" SkinID="txt" 
                                                Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtta" Display="Dynamic" ErrorMessage="*" 
                    Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="txtta" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="bc">
            <td class="style7" __designer:mapid="bd">
                Dist:</td>
            <td __designer:mapid="be" class="style5">
                <asp:TextBox ID="txtdist" runat="server" SkinID="txt" 
                                                Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtdist" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="txtdist" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="bf">
            <td class="style7" __designer:mapid="c0">
                State:</td>
            <td __designer:mapid="c1" class="style5">
                <asp:TextBox ID="txtstate" runat="server" SkinID="txt" 
                                                Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtstate" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                    ControlToValidate="txtstate" ErrorMessage="Enter Only Alphabetic Characters" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[a-zA-Z]*" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="c2">
            <td class="style7" __designer:mapid="c3">
                Country:</td>
            <td __designer:mapid="c4" class="style5">
                <asp:TextBox ID="txtcountry" runat="server" SkinID="txt" 
                                                Width="100px" Enabled="False">India</asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="c5">
            <td class="style7" __designer:mapid="c6">
                Pincode:</td>
            <td __designer:mapid="c7" class="style5">
                <asp:TextBox ID="txtpin" runat="server" SkinID="txt" 
                                                Width="100px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtpin" Display="Dynamic" ErrorMessage="*" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" 
                    ControlToValidate="txtpin" ErrorMessage="Enter proper 6 digited PinCode" 
                    Font-Bold="True" ForeColor="Red" ValidationExpression="[0-9]{6}" 
                    ValidationGroup="a"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr __designer:mapid="c8">
            <td __designer:mapid="c9" class="style8">
                &nbsp;</td>
            <td __designer:mapid="ca">
                &nbsp;</td>
        </tr>
        <tr __designer:mapid="cb">
            <td __designer:mapid="cc" class="style8">
                <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" 
                    SkinID="but" Text="Update" ValidationGroup="a" />
            </td>
            <td __designer:mapid="cd">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
                    SkinID="but" Text="Delete" />
            </td>
        </tr>
        <tr __designer:mapid="cb">
            <td __designer:mapid="cc" class="style8">
                &nbsp;</td>
            <td __designer:mapid="cd">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

