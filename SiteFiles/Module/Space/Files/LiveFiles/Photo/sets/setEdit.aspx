<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoSetEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="GlobalScriptHolder" runat="server">
	<bairong:Script runat="server" visible="true" Src="~/livefiles/scripts/photo/sets.js" />
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">



<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
<table cellspacing=0 border=0 width='100%' class="spAToolbar">
  <tr>
	<td width="100%" class="modhead"><table cellspacing="0" width="100%" class="fixedTable partheader" style="width:100%;">
		  <tr>
			<td class="bold ellipse partDetail" nowrap>
				<div class='ellipse' style="margin-left:10px;"><bairong:NoTagText id="SetContainerTitle" runat="server" /></div>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				  <tr>
				  	<td align="left" style="font-weight:normal;">&nbsp;小提示：拖动至此可将图片添加至相册中</td>
					<td align="right"><nobr><ul class="toolbar"><li><asp:HyperLink ID="RotateLink" runat="server"><asp:Image ImageUrl="~/sitefiles/bairong/icons/photo/rotate.gif" class="sppIcon" runat="server"></asp:Image>翻转</asp:HyperLink></li>
		<li id="ReturnIcon" runat="server" Class="sppLast"><a href="../sets"><asp:Image ImageUrl="~/sitefiles/bairong/icons/return.gif" runat="server"></asp:Image>返回相册</a></li>
	  </ul></nobr></td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table></td>
  </tr>
</table>

<table id="set_<%= GetCurrentSetID()%>" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td align="center" valign="top">
		<div class="set_div">
			<div id="currentset_<%= GetCurrentSetID()%>" class="set_thumb_div" style="width:80px;">
			<asp:HyperLink ID="ReturnToSet" runat="server"><img src="<%= GetCurrentSetImageUrl()%>" width="75" height="75" alt="<%= HttpUtility.HtmlEncode(GetCurrentSetDescription()) %>"></asp:HyperLink></div>
			<div><%= GetCurrentSetDescription() %></div>
			<br />
			<%= GetContentCount(Convert.ToInt32(GetCurrentSetID()))%> 幅图片<br />
			<bairong:NoTagText id="SetManager" runat="server" />
		</div>
		<script type="text/javascript">Droppables.add('currentset_<%= GetCurrentSetID()%>', {hoverclass:'hoverclass123',onDrop:dropToCurrentSet})</script>
		<script type="text/javascript">Droppables.add('set_<%= GetCurrentSetID()%>', {hoverclass:'hoverclass123',onDrop:dropToSet})</script>
	</td>
	<td align="left" valign="top">
		<asp:DataList ID="SetPhotoDataList" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="left" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
		  <itemtemplate>
			<div id="setphoto_<%# DataBinder.Eval(Container.DataItem, "ID") %>" style="width:120px; margin-bottom:12px;" class="photolist"><IMG alt="拖动图片可将图片从相册中移除" src="<%# GetImageUrl((int)DataBinder.Eval(Container.DataItem, "ID"), (DateTime)DataBinder.Eval(Container.DataItem, "AddDate"), (string)DataBinder.Eval(Container.DataItem, "ImageType")) %>" style="cursor:move;"><br />
			<nobr><input type="checkbox" name="ContentIDCollection" value="<%# DataBinder.Eval(Container.DataItem, "ID") %>" /> <A class=Plain href="<%# GetPhotoContentUrl((int)DataBinder.Eval(Container.DataItem, "ID")) %>"><%# MaxLengthText(Convert.ToString(Eval("Title"))) %></A></nobr>
			<br /></div>
			<script type="text/javascript">new Draggable('setphoto_<%# DataBinder.Eval(Container.DataItem, "ID") %>', {revert:true})</script>
		   </itemtemplate>
		</asp:DataList>
		&nbsp;
	</td>
  </tr>
</table>
</td>
<td>&nbsp;</td>
<td width="300" valign="top">

<table cellspacing=0 border=0 width='100%' class="spAToolbar">
  <tr>
	<td width="100%" class="modhead"><table cellspacing="0" width="100%" class="fixedTable partheader" style="width:100%;">
		  <tr>
			<td class="bold ellipse partDetail" nowrap><div class='ellipse' style="margin-left:10px;">全部图片</div></td>
		  </tr>
		  <tr>
		  	<td align="left" style="font-weight:normal;">&nbsp;小提示：拖动至此可将图片从相册中移除</td>
		  </tr>
		</table></td>
  </tr>
</table>
<table id="photolist_<%= GetCurrentSetID()%>" width="100%" border=0 cellspacing=0>
<tr>
<td width='20'></td>
<td align="left" valign="top">
	<asp:DataList ID="PhotoDataList" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="left" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
	  <itemtemplate>
		<div id="photo_<%# DataBinder.Eval(Container.DataItem, "ID") %>" class="photolist" style="margin:2px;"><IMG alt="拖动图片可将图片添加至相册" width="45" height="45" src="<%# GetImageUrl((int)DataBinder.Eval(Container.DataItem, "ID"), (DateTime)DataBinder.Eval(Container.DataItem, "AddDate"), (string)DataBinder.Eval(Container.DataItem, "ImageType")) %>" style="cursor:move;"></div>
		<script type="text/javascript">new Draggable('photo_<%# DataBinder.Eval(Container.DataItem, "ID") %>', {revert:true})</script>
	   </itemtemplate>
	</asp:DataList>
  <div class="separator"></div>
	<table cellspacing="0" style="" width="100%" height="25" class='subnav'>
	   <tr>
		<td colspan="2" height=5></td>
	   <tr>
	  <tr>
		<td width="5"></td>
		<td>
			<bairong:sqlpager id="MySqlPager" PagerStyle="NumericPages" PagingMode="NonCached" Unit="幅图片" runat="server" Width="100%" cellspacing=0 border=0> </bairong:sqlpager>
			<div class="separator"></div>
		</td>
	  </tr>
	</table>
  </td>
	<td width='8'></td>
  </tr>
</table>
</td>
  </tr>
</table>

<script type="text/javascript">Droppables.add('photolist_<%= GetCurrentSetID()%>', {hoverclass:'hoverclass123',onDrop:dropToPhotoList})</script>
</asp:content>