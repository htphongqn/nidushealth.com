<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoriesRight.ascx.cs" Inherits="nidushealth.com.UIs.CategoriesRight" %>

<div class="box">
    <h2 class="block-title"><span>Categories</span></h2>
    <div class="contentCateNews">
    <div class="cateList">
        <ul class="category-links ">
            <asp:Repeater ID="Rpmenu" runat="server">
                <ItemTemplate>
                    <li class='<%#GetStyleActive(Eval("cat_seo_url"),Eval("cat_url")) %>'>
                        <a href="<%#GetLink(Eval("cat_url"),Eval("cat_seo_url"),1)%>"><%#Eval("cat_name")%></a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
    </div>
</div>