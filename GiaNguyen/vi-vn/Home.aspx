<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="nidushealth.com.vi_vn.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="ltrFavicon" runat="server" EnableViewState="false"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container">
    <div class="rowmn shadow bgWhite">
        <uc1:SlideMain ID="SlideMain1" runat="server" />    

      <div class="col12">
        <asp:Repeater ID="rptCatAbout" runat="server">
            <ItemTemplate>
                <div class="box padd10">
                  <div class="nameL" id="About Us"></div>
                    <h2 class="headingBox"><span><%#Eval("cat_name")%></span>
                    <div class="subMenu">
                        <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# Load_Menu2(Eval("Cat_ID")) %>'>
                            <ItemTemplate>
                                <div class="linkSC"><a href="<%#GetLinkCat(Eval("cat_url"),Eval("cat_seo_url"),1)%>">
                                    <%#Eval("cat_name")%>
                                </a></div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    </h2>                 
                    <div class="innerbox ">
                      <div class="inner_bIntro"> 
                        <img src="<%# Getimages_Cat(Eval("Cat_ID"), Eval("Cat_IMAGE1")) %>" />
                        <%#Eval("CAT_DESC")%> 
                      </div>
                  </div>                    
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <asp:Repeater ID="rptCatMain" runat="server">
            <ItemTemplate>
                <div class="box padd10">
                  <div class="nameL" id="Consumers"></div>
                    <h2 class="headingBox" ><span><%#Eval("cat_name")%></span>
                      <div class="subMenu">
                          <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# Load_Menu2(Eval("Cat_ID")) %>'>
                                <ItemTemplate>
                                    <div class="linkSC"><a href="<%#GetLinkCat(Eval("cat_url"),Eval("cat_seo_url"),1)%>">
                                        <%#Eval("cat_name")%>
                                    </a></div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </h2>                  
                    <div class="innerbox  ">
                      <div class="imgCate">            
                        <img src="<%# Getimages_Cat(Eval("Cat_ID"), Eval("Cat_IMAGE1")) %>" />
                            <div class="captionPhotoCate">
                            <div class="desCaption"><%#Eval("CAT_DESC")%></div>
                            <div class="clearfix"></div>
                            <div class="listSubmenu fright">
                                <asp:Repeater ID="Repeater2" runat="server" DataSource='<%# Load_Menu2(Eval("Cat_ID")) %>'>
                                    <ItemTemplate>
                                    <div class="linkSM">
                                        <div class="btn btnWhite"><a href="<%#GetLinkCat(Eval("cat_url"),Eval("cat_seo_url"),1)%>">
                                            <%#Eval("cat_name")%>
                                        </a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                      </div>
                      <div class="videoCate">
                        <div class="listMediaIndex">
                        <div class="innerListMedia">
                            <asp:Repeater ID="rptnew" runat="server" DataSource='<%# Load_news(Eval("Cat_ID")) %>'>
                                <ItemTemplate>
                                <div class="mediaItem">
                                    <div class="media">
                                        <div class="innerMedia">
                                        <div class="dateTime"><%# getdate(Eval("NEWS_PUBLISHDATE"))%></div>
                                        <div class="thumb"><a class="fancybox" rel="group" href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">
                                            <img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" alt="<%# Eval("NEWS_TITLE") %>" /></a></div>
                                        <div class="text">
                                            <h3><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE") %></a></h3>
                                            <p><%# Eval("NEWS_DESC") %></p>
                                        </div>
                                        </div>
                                    </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        </div>
                      </div>
                   </div>                    
                </div>
            </ItemTemplate>
        </asp:Repeater>
        
        <asp:Repeater ID="rptCatLastNews" runat="server">
            <ItemTemplate>
                <div class="box padd10">
                  <div class="nameL" id="Last News"></div>
                    <h2 class="headingBox"><span><%#Eval("cat_name")%></span>
                    <div class="subMenu">
                      <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# Load_Menu2(Eval("Cat_ID")) %>'>
                        <ItemTemplate>
                            <div class="linkSC"><a href="<%#GetLinkCat(Eval("cat_url"),Eval("cat_seo_url"),1)%>">
                                <%#Eval("cat_name")%>
                            </a></div>
                        </ItemTemplate>
                    </asp:Repeater>
                    </div>
                  </h2>
                  <div class="innerbox ">
                    <div class="listMediaIndex">
                      <div class="innerListMedia">
                        <asp:Repeater ID="rptLastnew" runat="server" DataSource='<%# Load_news(Eval("Cat_ID")) %>'>
                            <ItemTemplate>
                                <div class="mediaItem">
                                  <div class="media">
                                    <div class="innerMedia">
                                      <div class="dateTime"><%# getdate(Eval("NEWS_PUBLISHDATE"))%></div>
                                      <div class="thumb"><a><img src="<%# GetImageT(Eval("NEWS_ID"),Eval("NEWS_IMAGE3")) %>" alt="<%# Eval("NEWS_TITLE") %>" /></a></div>
                                      <div class="text">
                                        <h3><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>"><%# Eval("NEWS_TITLE") %></a></h3>
                                        <p><%# Eval("NEWS_DESC") %></p>
                                      </div>
                                      <div class="viewMoreNews">
                                        <div class="fleft linePostL"><i class="glyphicon glyphicon-comment white"></i><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">Read more </a> </div>
                                        <div class="fright linkViewMore"><a href="<%# GetLink(Eval("NEWS_URL"),Eval("NEWS_SEO_URL"),Eval("CAT_SEO_URL")) %>">View detail &raquo;</a></div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                      </div>
                    </div>
                  </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
      </div>
      <div class="footer wmn"> </div>
    </div>
  </div>
</asp:Content>
