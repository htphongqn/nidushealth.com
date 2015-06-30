<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListNews.ascx.cs" Inherits="nidushealth.com.UIs.ListNews" %>

<%@ Register src="SlideDetail.ascx" tagname="SlideDetail" tagprefix="uc1" %>
<%@ Register src="Path.ascx" tagname="Path" tagprefix="uc2" %>
<%@ Register src="CategoriesRight.ascx" tagname="CategoriesRight" tagprefix="uc3" %>
<%@ Register src="NewsRight.ascx" tagname="NewsRight" tagprefix="uc4" %>

<div class="container">
    <div class="rowmn shadow bgWhite">
      <div class="col12 cSlideImgProAds"> 
          <uc1:SlideDetail ID="SlideDetail1" runat="server" />
      </div>
      <div class="breadcrumbBox">
        <uc2:Path ID="Path1" runat="server" />
      </div>
      <div class="col9 cMainContent">
        <div class="box">
          <div class="headingBox headingBoxMain"><span><asp:Literal ID="lbNewsTitle" runat="server"></asp:Literal></span></div>
          <div class="innerbox ">
            <div class="listMediaIndex blistnews">
              <div class="innerListMedia">
                <%--<div class="mediaItem">
                  <div class="media">
                    <div class="innerMedia">
                      <div class="dateTime">Apr 19, 2015</div>
                      <div class="thumb"><a><img src="data/h3.jpg" /></a></div>
                      <div class="text">
                        <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                        <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
                      </div>
                      <div class="viewMoreNews">
                        <div class="fleft linePostL"><i class="glyphicon glyphicon-comment white"></i><a>News </a> </div>
                        <div class="fright linkViewMore"><a>View detail &raquo;</a></div>
                      </div>
                    </div>
                  </div>
                </div>--%>
                <asp:Repeater ID="Rplistnews" runat="server">
                    <ItemTemplate>
                    <%#GetHtmlItemNews(Eval("NEWS_URL"), Eval("NEWS_SEO_URL"), Eval("CAT_SEO_URL"), Eval("NEWS_ID"), Eval("NEWS_IMAGE3"), Eval("NEWS_TITLE"), Eval("NEWS_DESC"), Eval("NEWS_PUBLISHDATE"))%>
                    </ItemTemplate>
                </asp:Repeater>
              </div>
              <div class="clearfix text-center">
                <ul class="pagination">
                  <asp:Literal ID="ltrPage" runat="server"></asp:Literal>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--End Box-->
      <div class="col3 cateNews">
        <uc3:CategoriesRight ID="CategoriesRight1" runat="server" />
        <uc4:NewsRight ID="NewsRight1" runat="server" />
      </div>
    </div>
    <div class="footer wmn"> </div>
  </div>