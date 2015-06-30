<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsRight.ascx.cs" Inherits="nidushealth.com.UIs.NewsRight" %>

<div class="box cOtherNews">
    <h2 class="block-title"><span>Latest News</span></h2>
    <div class="listMediaIndex category-links">
    <div class="innerListMedia">
        <%--<div class="mediaItem">
        <div class="media">
            <div class="innerMedia">
            <div class="dateTime">Apr 19, 2015</div>
            <div class="text">
                <h3><a href="detailnews.html">Nulla vel metus scele risques</a></h3>
            </div>
            </div>
        </div>
        </div>--%>
        <asp:Literal ID="lblLoadNews" runat="server"></asp:Literal>  
    </div>
    </div>
</div>