<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Modal.ChangeTheme" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="TitleHolder" runat="server">
  <title>更换主题</title>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<STYLE>
* {	LINE-HEIGHT: 130%}
DIV {	BORDER-TOP-WIDTH: 0px;	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	BORDER-LEFT-WIDTH: 0px;	BORDER-BOTTOM-WIDTH: 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px auto;	PADDING-TOP: 0px;	BORDER-RIGHT-WIDTH: 0px}
.menuSub-div {	BORDER-RIGHT: #ccc 2px solid;	BORDER-TOP: #ccc 2px solid;	BACKGROUND: white;	BORDER-LEFT: #ccc 2px solid;	BORDER-BOTTOM: #ccc 2px solid}
.menuSub-div-theme {	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	PADDING-BOTTOM: 3px;	WIDTH: 560px !important;	PADDING-TOP: 3px}
BODY > DIV {	CLEAR: both;	MARGIN-LEFT: auto;	MARGIN-RIGHT: auto} 
BODY {	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px;	PADDING-TOP: 0px} 
BODY {	FONT: 12px Verdana, Arial, Helvetica, "宋体", sans-serif;	COLOR: #333} 
BODY {	BACKGROUND: #eee}
BODY {	BACKGROUND: #fff repeat-x 50% 30px}
BODY {	COLOR: #666}
HTML {	BORDER-TOP-WIDTH: 0px;	OVERFLOW-Y: scroll;	BORDER-LEFT-WIDTH: 0px;	BORDER-BOTTOM-WIDTH: 0px;	BORDER-RIGHT-WIDTH: 0px} 
.menuSub-div * {	FONT: 12px Verdana, Arial, Helvetica, "宋体", sans-serif;	COLOR: #333} 
.subMenu-content {	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	PADDING-BOTTOM: 0px;	PADDING-TOP: 0px} 
.subMenu-content .more {	PADDING-RIGHT: 5px;	BORDER-TOP: #ccc 1px solid;	PADDING-LEFT: 2px;	PADDING-BOTTOM: 2px;	MARGIN: 5px 2px 0px;	PADDING-TOP: 5px;	TEXT-ALIGN: right} 
A {	FONT: 12px Verdana, Arial, Helvetica, "宋体", sans-serif;	COLOR: #333} 
A {	TEXT-DECORATION: underline} 
.menuSub-div A {	COLOR: #333 !important;	TEXT-DECORATION: underline} 
A {	COLOR: #7798ab} 
* + HTML .clearfix {	MIN-HEIGHT: 1%} 
.menuInnerSub-div {	} 
* + HTML .clearfix {	MIN-HEIGHT: 1%} 
.clearfix {	DISPLAY: inline-block} 
.clearfix {	DISPLAY: block} 
.subMenu-title {	PADDING-RIGHT: 5px;	BACKGROUND-POSITION: left center;	PADDING-LEFT: 12px;	PADDING-BOTTOM: 0px;	MARGIN: 5px 4px;	PADDING-TOP: 4px;	BORDER-BOTTOM: #ddd 1px solid;	BACKGROUND-REPEAT: no-repeat;	BACKGROUND-COLOR: #eee} 
.subMenu-title-out {	BACKGROUND-IMAGE: url(images/ico_submenuhide.gif)} 
IMG {	BORDER-TOP-WIDTH: 0px;	PADDING-RIGHT: 0px;	PADDING-LEFT: 0px;	BORDER-LEFT-WIDTH: 0px;	BORDER-BOTTOM-WIDTH: 0px;	PADDING-BOTTOM: 0px;	MARGIN: 0px auto;	PADDING-TOP: 0px;	BORDER-RIGHT-WIDTH: 0px} 
.menuSub-out {	BORDER-RIGHT: #ccc 1px solid;	PADDING-RIGHT: 2px;	BORDER-TOP: #ccc 1px solid;	PADDING-LEFT: 2px;	BACKGROUND: #f9f9f9;	PADDING-BOTTOM: 2px;	MARGIN: 1px 2px;	BORDER-LEFT: #ccc 1px solid;	CURSOR: pointer;	PADDING-TOP: 2px;	BORDER-BOTTOM: #ccc 1px solid} 
.menuSub-div-theme .menuInnerSub-div DIV {	FLOAT: left;	POSITION: relative} 
.menuSub-out IMG {	VERTICAL-ALIGN: middle}
.menuInnerSub-div-theme IMG {	WIDTH: 60px;	HEIGHT: 50px} 
.menuSub-active {	BORDER-LEFT-COLOR: #3499cc;	BORDER-BOTTOM-COLOR: #3499cc;	BORDER-TOP-COLOR: #3499cc;	BORDER-RIGHT-COLOR: #3499cc}
.subMenu-title-active {	BACKGROUND-IMAGE: url(images/ico_submenushow.gif)} </STYLE>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td valign="top" width="200">
	  	<asp:Repeater ID="MyRepeater" runat="server">
			<itemtemplate><%# GetStyleCollectionDisplayName((string)DataBinder.Eval(Container.DataItem,"Name"))%></itemtemplate>
		  </asp:Repeater>
	  </td>
      <td>
		<div class="subMenu-maintitle" style="line-height:20px;">当前主题：<%=GetCurrentStyleCollectionDisplayName()%></div>
				
				<DIV class="menuInnerSub-div clearfix menuInnerSub-div-theme">
                <asp:Repeater ID="MyRepeater2" runat="server">
				  <itemtemplate><bairong:NoTagText id="TheItem" runat="server" /></itemtemplate>
				</asp:Repeater>
				</DIV>
      </td>
    </tr>
  </tbody>
</table>

</asp:content>
