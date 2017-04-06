<%@ Page Language="C#" MasterPageFile="~/LiveServer/MasterPage/User/TwoColRightNavigation.master" Inherits="SiteServer.Space.Photo.Pages.PhotoSetAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
<div class="ContainerPadding">
<div class="ThinCase">
		<h3><bairong:NoTagText id="CommandTitle" runat="server" /></h3>
		
		<table cellpadding="3" width="95%" align="center">
		  <tr>
			<td width="130" align="left"><space:Help HelpText="相册的名称" Text="相册名称：" runat="server" ></space:Help>
			</td>
			<td align="left"><asp:TextBox ID="SetName" runat="server" style="width:350px;" CssClass="text"></asp:TextBox>
			<asp:RequiredFieldValidator
			ControlToValidate="SetName"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/>
			</td>
		  </tr>
		  <tr>
			<td width="130" align="left"><space:Help HelpText="相册的简介。" Text="相册简介：" runat="server" ></space:Help>
			</td>
			<td align="left"><asp:TextBox ID="Description" runat="server" TextMode="MultiLine" Rows="4" style="width:350px;" CssClass="text"></asp:TextBox>
			</td>
		  </tr>
		  <tr>
			<td colspan="2"><asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="确 认" CssClass="button"></asp:Button>&nbsp;&nbsp;<asp:Button ID="Cancel" OnClick="Cancel_Click" runat="server" Text="取 消" CssClass="button"></asp:Button>
			</td>
		  </tr>
		</table>
	</div>

	<div class="separator"></div>
  </div>
</asp:content>
<asp:content contentplaceholderid="NavigationHolder" runat="server">

<space:OwnerView runat="server">
	<OwnerTemplate>
		<space:NavigationContent id="content1" runat="server" title="功能导航">
			<contentsTemplate>
			  <UL class=List>
			    <LI><A href="<%=UserRootUrl%>/blog/default.aspx"><DIV><asp:Image ImageUrl="~/sitefiles/bairong/icons/return.gif" runat="server"></asp:Image>返回浏览文章</DIV></A></LI>
				<LI><A href="<%=UserRootUrl%>/blog/add.aspx"><DIV><asp:Image ImageUrl="~/sitefiles/bairong/icons/add.gif" runat="server"></asp:Image>发表文章</DIV></A></LI>
				<LI><A href="<%=UserRootUrl%>/blog/management.aspx"><DIV><asp:Image ImageUrl="~/sitefiles/bairong/icons/edit.gif" runat="server"></asp:Image>管理文章</DIV></A></LI>
				<LI><A href="<%=UserRootUrl%>/blog/tags"><DIV><asp:Image ImageUrl="~/sitefiles/bairong/icons/tags.gif" runat="server"></asp:Image>管理标签</DIV></A></LI>
			  </UL>
			</contentsTemplate>
		</space:NavigationContent>
	</OwnerTemplate>
	<VisitorTemplate>
		<space:NavigationContent id="content1" runat="server" title="功能导航">
			<contentsTemplate>
			  <UL class=List>
			    <LI><A href="<%=UserRootUrl%>/blog/default.aspx"><DIV><asp:Image ImageUrl="~/sitefiles/bairong/icons/return.gif" runat="server"></asp:Image>返回浏览文章</DIV></A></LI>
				<LI><A href="<%=UserRootUrl%>/blog/tags"><DIV><asp:Image ImageUrl="~/sitefiles/bairong/icons/tags.gif" runat="server"></asp:Image>文章标签</DIV></A></LI>
			  </UL>
			</contentsTemplate>
		</space:NavigationContent>
	</VisitorTemplate>
</space:OwnerView>

</asp:content>
