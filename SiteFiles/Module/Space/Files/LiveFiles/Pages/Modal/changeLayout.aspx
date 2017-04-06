<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Modal.ChangeLayout" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<asp:content contentplaceholderid="TitleHolder" runat="server">
  <title>更换版式</title>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<style>
.menuSub-div {
	border-bottom: #ccc 2px solid;
	border-left: #ccc 2px solid;
	background: white;
	border-top: #ccc 2px solid;
	border-right: #ccc 2px solid;
}
.menuSub-div * {
	font: 12px Verdana, Arial, Helvetica, "宋体", sans-serif;
	color: #333;
}
.menuSub-div A {
	color: #333 !important;
	text-decoration: underline;
}
.subMenu-content {
	padding-bottom: 0px;
	padding-left: 0px;
	padding-right: 0px;
	padding-top: 0px;
}
.subMenu-title {
	border-bottom: #ddd 1px solid;
	padding-bottom: 0px;
	background-color: #eee;
	margin: 5px 4px;
	padding-left: 12px;
	padding-right: 5px;
	background-repeat: no-repeat;
	background-position: left center;
	padding-top: 4px;
}
.menuInnerSub-div UL {
	padding-bottom: 0px;
	list-style-type: none;
	margin: 0px 10px;
	padding-left: 0px;
	padding-right: 0px;
	padding-top: 0px;
}
.menuSub-out {
	border-bottom: #ccc 1px solid;
	border-left: #ccc 1px solid;
	padding-bottom: 2px;
	margin: 1px 2px;
	padding-left: 2px;
	padding-right: 2px;
	background: #f9f9f9;
	border-top: #ccc 1px solid;
	cursor: pointer;
	border-right: #ccc 1px solid;
	padding-top: 2px;
}
.menuSub-out IMG {
	vertical-align: middle;
}
.menuSub-active {
	border-bottom-color: #3499cc;
	border-top-color: #3499cc;
	border-right-color: #3499cc;
	border-left-color: #3499cc;
}

.menuInnerSub-div DIV
{
	position: relative;
	float: left;
}

</style>
<DIV class="subMenu-content">
  <DIV class="subMenu-title clearfix subMenu-title-active">请选择版式</DIV>
  <DIV class="menuInnerSub-div">
    <asp:Literal ID="ltlItems" runat="server"></asp:Literal>
  </DIV>
</DIV>
</asp:content>
