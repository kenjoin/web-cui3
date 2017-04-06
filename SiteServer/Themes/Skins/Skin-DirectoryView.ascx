<%@ Control Language="C#" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;">
	<form runat="server"><asp:Repeater ID="MyRepeater" runat="server">
		<itemtemplate>
			<%#DirectoryView.GetTitle(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"ParentID")), Convert.ToInt32(DataBinder.Eval(Container.DataItem,"NodeID")), DataBinder.Eval(Container.DataItem,"NodeName").ToString(), DataBinder.Eval(Container.DataItem,"NodeType").ToString(), Convert.ToInt32(DataBinder.Eval(Container.DataItem,"ParentsCount")), Convert.ToInt32(DataBinder.Eval(Container.DataItem,"ChildrenCount")), Convert.ToInt32(DataBinder.Eval(Container.DataItem,"ContentNum")))%>
		</itemtemplate>
	</asp:Repeater></form>
</table>