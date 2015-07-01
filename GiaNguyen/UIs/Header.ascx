<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="nidushealth.com.UIs.Header" %>
    <div class="rowmn rHeader">
        <div class=" col3 cLogo">
            <div class="clsLogo">
                <%--<a href="index.html"><img src="data/logo.png" /></a>--%>
                <asp:Repeater ID="Rplogo" runat="server">
                    <ItemTemplate>
                        <%# Getbanner(Eval("BANNER_TYPE"),Eval("BANNER_FIELD1"), Eval("BANNER_ID"), Eval("BANNER_FILE"))%>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="col4 fright hotline text-right">
            24/7 HELPLINE <b><asp:Literal ID="lblHotline" runat="server"></asp:Literal></b> 
        </div>
    </div>