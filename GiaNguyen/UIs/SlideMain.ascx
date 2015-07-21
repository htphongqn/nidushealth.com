<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SlideMain.ascx.cs" Inherits="nidushealth.com.UIs.SlideMain" %>

<div class="wmn">
    <link rel="stylesheet" href="/vi-vn/Styles/nivo-slider.css" type="text/css" media="screen" />
    <script type="text/javascript" src="/vi-vn/scripts/jquery.nivo.slider.js"></script> 
    <script>
        //slider nivo
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
    <div class="slider_main">
        <div class="slider-wrapper theme-default">
        <div id="slider" class="nivoSlider">            
            <asp:Repeater ID="Rpslider" runat="server">
                <ItemTemplate>
                    <div class="itemSlide"> <%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("AD_ITEM_DESC"))%> </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        </div>
    </div>
</div>