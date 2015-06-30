<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsDetail.ascx.cs" Inherits="nidushealth.com.UIs.NewsDetail" %>

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
          <div class="innerbox ">
            <div class="shortView">
              <div class="innerShortView">The critical point of any telemedicine encounter is the accurate delivery of patient information from one location to another. So much can get "lost in translation" </div>
            </div>
            <div class="detailNews">
              <div class="innerDetailNews">
                <div class="contentNews">
                  <h1> <asp:Label ID="lbNewsTitle" runat="server" /></h1>
                  <div class="postDateTime"></div>
                  <asp:Literal ID="liHtml" runat="server"></asp:Literal>
                </div>
                <div class="fleft toolPost "><span class="fleft"><i class="glyphicon glyphicon-circle-arrow-left"></i> <a href="news.html">Back</a></span><a><i class="glyphicon glyphicon-print"></i>Print</a><a><i class="glyphicon glyphicon-share-alt"></i>Share</a><a><i class="glyphicon glyphicon-share"></i>Feedback</a></div>
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