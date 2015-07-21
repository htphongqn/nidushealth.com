<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SlideDetail.ascx.cs" Inherits="nidushealth.com.UIs.SlideDetail" %>

<script type="text/javascript">
	$(document).ready(function(){
		$('.slider1').bxSlider({
		mode: 'horizontal',
		slideWidth: 200,
		minSlides: 7,
		moveSlides: 1,
		maxSlides: 7,
		slideMargin: 5,
		auto: true,
		speed: 5000,
		controls: false,
		pause: 0,
		});
	});
</script>
<div class="slider1">
    <%--<div class="slide">
        <div class="ads"><a href="#"><img src="data/1.png" /></a></div>
    </div>--%>
    <asp:Repeater ID="Rpslider" runat="server">
        <ItemTemplate>
            <div class="ads">
                <%# GetImageAd(Eval("AD_ITEM_ID"), Eval("AD_ITEM_FILENAME"), Eval("AD_ITEM_TARGET"), Eval("AD_ITEM_URL"), Eval("AD_ITEM_DESC"))%>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>