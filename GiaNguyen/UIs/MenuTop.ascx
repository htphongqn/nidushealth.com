<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuTop.ascx.cs" Inherits="nidushealth.com.UIs.MenuTop" %>

<div class="rowmn cMenu"> 
    <div class="col9 cNavx">
    <div class="navx">
        <ul>
        <asp:Repeater ID="Rpmenu" runat="server">
            <ItemTemplate>
                <li class='<%#GetStyleActive(Eval("cat_seo_url"),Eval("cat_url")) %>'>
                    <a href="<%#GetLink(Eval("cat_url"),Eval("cat_seo_url"),1)%>"><%#Eval("cat_name")%></a>
                    <asp:Repeater ID="Repeater1" runat="server" DataSource='<%# Load_Menu2(Eval("Cat_ID")) %>'>
                        <HeaderTemplate>
                            <ul>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li><a href="<%#GetLink(Eval("cat_url"),Eval("cat_seo_url"),1)%>">
                                <%#Eval("cat_name")%>
                                </a></li>
                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>
                    </asp:Repeater>
                </li>
            </ItemTemplate>
        </asp:Repeater>
        </ul>
    </div>
    </div>
    <div class="col1 cLogin"> <a href="signin.html"><i class="glyphicon glyphicon-lock"></i>Sign in</a> </div>
</div>