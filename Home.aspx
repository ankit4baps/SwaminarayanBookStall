﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>|| Swaminarayan BookStall ||</title>
    <link href="Styles/homeStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
    <div class="up">
        <div class="title">
            
            <asp:ImageMap ID="ImageMap4" runat="server" BorderStyle="None" Height="50px" 
                ImageUrl="~/Image/Logos/logoFinal.png" Width="430px">
                <asp:RectangleHotSpot AlternateText="Swaminarayan BookStall" Bottom="50" 
                    HotSpotMode="Navigate" Left="10" NavigateUrl="~/Home.aspx" Right="580" />
            </asp:ImageMap>
            
        </div>
        <div class="loginDisplay">
          <div style="float:left; width: 365px;">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            
                 <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/Registration/login.aspx">Login</asp:HyperLink>
          </div>  
            
            
            <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal" CssClass="mn" 
                EnableViewState="False" IncludeStyleBlock="False">
                <Items>
                    <asp:MenuItem Text="Menu" Value="Menu">
                        <asp:MenuItem NavigateUrl="~/Registration/PersonalInfo.aspx" 
                            Text="My Account" Value="My Account"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/custorderCheck.aspx" 
                            Text="My Order" Value="Order"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/feedback.aspx" Text="My Feedback" 
                            Value="feedback"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Registration/logout.aspx" Text="Logout" 
                            Value="Logout"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
            
            
            <asp:Menu ID="Menu3" runat="server" Orientation="Horizontal" CssClass="mn" 
                EnableViewState="False" IncludeStyleBlock="False">
                <Items>
                    <asp:MenuItem Text="Menu" Value="Menu">
                        <asp:MenuItem NavigateUrl="~/Admin/InsertItem.aspx" 
                            Text="Items" Value="items"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/orderList.aspx" 
                            Text="Order" Value="Order"></asp:MenuItem>
                        <asp:MenuItem Text="Users" 
                            Value="Users" NavigateUrl="~/Admin/listUser.aspx"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/AdminFeedbackCheck.aspx" Text="Feedback" 
                            Value="feedback"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Registration/logout.aspx" Text="Logout" 
                            Value="Logout"></asp:MenuItem>
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
            
        </div>
        <div class="hideskiplink">
            
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" CssClass="menu" 
                EnableViewState="False" IncludeStyleBlock="False">
                <Items>
                    <asp:MenuItem Text="Publication" Value="Publication">
                        <asp:MenuItem Text="Gujarati" Value="Gujarati" 
                            NavigateUrl="~/Publication/Gujarati.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="English" Value="English" 
                            NavigateUrl="~/Publication/English.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Hindi" Value="Hindi" NavigateUrl="~/Publication/Hindi.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Marathi" Value="Marathi" 
                            NavigateUrl="~/Publication/Marathi.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Audio" Value="Audio">
                        <asp:MenuItem Text="Audio CDs" Value="Audio CDs" 
                            NavigateUrl="~/Publication/AudioCds.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="MP3 CDs" Value="MP3 CDs" 
                            NavigateUrl="~/Publication/MP3.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Video" Value="Video">
                        <asp:MenuItem Text="Satsang Darshan Parts" Value="SatsangDarshan" 
                            NavigateUrl="~/Publication/SatsangDarshan.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="DVDs" Value="DVDs" NavigateUrl="~/Publication/DVDs.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="E-Books" Value="E-Books" NavigateUrl="~/Ebook.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Search" Value="Search" NavigateUrl="~/search.aspx">
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
            
        </div>
    </div>        
    </div>
    <div class="page">
        <div class="main">
            <div class="adrot">
                
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" Interval="3000">
                        </asp:Timer>
                        <asp:AdRotator ID="AdRotator1" runat="server"  CssClass="ad" 
                            DataSourceID="XmlDataSource1"/>
                        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml">
                        </asp:XmlDataSource>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
            </div>
            <div class="imgmp">
                <asp:ImageMap ID="ImageMap1" runat="server" CssClass="imp mar1" 
                    ImageUrl="~/Image/Slider/ImageMap1.gif" Height="150px" Width="290px" 
                    HotSpotMode="Navigate">
                    <asp:RectangleHotSpot AlternateText="Publications" Bottom="780" 
                        HotSpotMode="Navigate" Left="5" NavigateUrl="~/Publication/English.aspx" 
                        Right="290" Top="530" />
                </asp:ImageMap>
                <asp:ImageMap ID="ImageMap2" runat="server" CssClass="imp mar" 
                    ImageUrl="~/Image/Slider/ImageMap2.jpg">
                    <asp:RectangleHotSpot AlternateText="Free Shipping" Bottom="700" 
                        HotSpotMode="Navigate" Left="150" NavigateUrl="~/Home.aspx" Right="250" 
                        Top="620" />
                </asp:ImageMap>
                <asp:ImageMap ID="ImageMap3" runat="server" CssClass="imp mar" 
                    ImageUrl="~/Image/Slider/ramayaneng.jpg">
                </asp:ImageMap>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="col2">
            
            &nbsp;<asp:Label ID="Label1" runat="server" CssClass="lbl" 
                Text="Swaminarayan BookStall"></asp:Label>
            <br />
            &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" 
                Font-Underline="False" NavigateUrl="~/About Us.aspx">About Us</asp:HyperLink>
            <br />
            &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" ForeColor="White" 
                Font-Underline="False" NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink>
            <br />
            &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" ForeColor="White" 
                Font-Underline="False" NavigateUrl="~/feedback.aspx">Feedback</asp:HyperLink>
            <br />
            &nbsp;<asp:HyperLink ID="HyperLink5" runat="server" 
                ForeColor="White" Font-Underline="False" NavigateUrl="~/Sitemap.aspx">SiteMap</asp:HyperLink>
            
        </div>
        <div class="col1">
            
            <asp:Label ID="Label2" runat="server" CssClass="lbl" Text="Help"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White" 
                Font-Underline="False" NavigateUrl="~/payments.aspx">Payments</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="White" 
                Font-Underline="False" NavigateUrl="~/shipping.aspx">Shipping</asp:HyperLink>
            
        </div>
        <div class="col1">
            
            <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="Policies"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="White" 
                Font-Underline="False" NavigateUrl="~/terms.aspx">Terms of Use</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="White" 
                Font-Underline="False" NavigateUrl="~/security.aspx">Security</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="White" 
                Font-Underline="False" NavigateUrl="~/privacy.aspx">Privacy</asp:HyperLink>
            <br />
            
        </div>
    </div>
    <div class="page" style="text-align:center">
        &copy SwaminarayanBookStall 2012-13
    </div>
    </form>
</body>
</html>