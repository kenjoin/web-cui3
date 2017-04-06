<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Blog.Pages.BlogDefault" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
	<asp:PlaceHolder ID="NavExtras" runat="server">
		<space:BlogListType runat="server" />
	</asp:PlaceHolder>

	<space:BlogArticles id="articles" runat="server" />
    <asp:PlaceHolder ID="phNoBlog" runat="server" Visible="false">
            
<UL class="clearfix">
<LI>
<P style="font-size:14px">您还没有撰写日志，<asp:HyperLink ID="hlWrite" Target="_usercenter" runat="server" style="font-size:14px">马上撰写</asp:HyperLink></P></LI></UL>

     </asp:PlaceHolder>
	
</asp:content>
<asp:content contentplaceholderid="NavigationHolder" runat="server">

<space:NavigationContent id="TagsEdit" runat="server">
	<contentsTemplate>
	  <UL class=List>
		<LI><space:UserLink NavigateUrl="blog/tags/edit/_TagName_.aspx" isReplaceQueryString="True" runat="server"><div>编辑此标签</div></space:UserLink></LI>
		<LI><space:UserLink NavigateUrl="blog/tags/default.aspx?Delete=True" Querys="TagName" runat="server" onclick="return confirm(&quot;此操作将从所有日志中删除此标签，确定吗？&quot;);"><div>删除此标签</div></space:UserLink></LI>
	  </UL>
	</contentsTemplate>
</space:NavigationContent>

<space:NavigationContent runat="server" title="日志索引">
	<contentsTemplate>	
		<space:BlogContentsSelector id="selector" runat="server"></space:BlogContentsSelector>
	</contentsTemplate>
</space:NavigationContent>

<div style=" float:right; margin-right:5px;">
<a href="rss.aspx" target="_blank"><asp:Image ImageUrl="~/SiteFiles/bairong/icons/rss.gif" class="sppIcon" runat="server"></asp:Image></a></div>

</asp:content>