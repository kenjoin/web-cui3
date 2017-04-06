<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoOrganization" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="GlobalScriptHolder" runat="server">
	<bairong:Script runat="server" visible="true" Src="<%=RootUrl%>/livefiles/scripts/photo/sets.js" />
</asp:content>
<asp:content contentplaceholderid="StyleHolder" runat="server">
	<bairong:Style runat="server" visible="true" Href="<%=RootUrl%>/livefiles/styles/css/photos.css" />
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<div>
      <table cellspacing="0" class="pheader" border=0 style="width:100%;" height="22">
        <tr>
          <td class="mod_tlc" width=6 nowrap>&nbsp;</td>
          <td width="100%" class="modhead"><table cellspacing="0" width="100%" class="fixedTable partheader" style="width:100%;">
              <tr>
                <td class="bold ellipse partDetail" nowrap><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><div class='ellipse'><bairong:NoTagText id="PhotoContainerTitle" runat="server" /></div></td>
				<td align="right"><p> 
     <a href='#' id='link'>Activator</a> 
 </p> 
 <div class='tooltip for_link'> 
     Tooltip Contents 
 </div>

	</div></td>
  </tr>
</table></td>
              </tr>
            </table></td>
          <td class="mod_trc" width=6 nowrap>&nbsp;</td>
        </tr>
      </table>
    </div>
<table id="photolist_<%= GetCurrentSetID()%>" width="100%" border=0 cellspacing=0>
  <tr>
	<td width='20'></td>
	<td align="left" valign="top">
		<asp:DataList ID="PhotoDataList" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="left" runat="server" RepeatColumns="7" RepeatDirection="Horizontal">
		  <itemtemplate>
			<div id="photo_<%# DataBinder.Eval(Container.DataItem, "ID") %>" style="width:135px;" class="photolist"><a href="javascript:undefined;"><IMG alt="拖动图片可将图片添加至相册" src="<%# GetImageUrl((int)DataBinder.Eval(Container.DataItem, "ID"), (DateTime)DataBinder.Eval(Container.DataItem, "AddDate"), (string)DataBinder.Eval(Container.DataItem, "ImageType")) %>" style="cursor:move;"></a><span>15 jul 06</span></div>
			<nobr><A class=Plain href="javascript:undefined;" onClick="Effect.toggle('menu_block<%# DataBinder.Eval(Container.DataItem, "ID") %>','slide'); return false;"><IMG src="<%=RootUrl%>/livefiles/images/icon/showMenu.gif" alt="点击显示图片菜单" width="12" height="14" align=absMiddle>菜单</A> <A class=Plain rel="lightbox[home]" href="<%# GetLightBoxImageUrl((int)DataBinder.Eval(Container.DataItem, "ID"), (DateTime)DataBinder.Eval(Container.DataItem, "AddDate"), (string)DataBinder.Eval(Container.DataItem, "ImageType")) %>">快速查看</A></nobr>
			<br />
			<script type="text/javascript">new Draggable('photo_<%# DataBinder.Eval(Container.DataItem, "ID") %>', {revert:true})</script>
			<div id="menu_block<%# DataBinder.Eval(Container.DataItem, "ID") %>" class="popupMenu2" style="display:none;">
				<div>
					<nobr>&nbsp;标题：<%# Convert.ToString(Eval("Title")) %>&nbsp;</nobr>
					<div class="separator"></div>
					&nbsp;<A href="<%=UserRootUrl%>/photo/<%# DataBinder.Eval(Container.DataItem, "ID") %>.aspx"><asp:Image ImageUrl="~/sitefiles/bairong/icons/view.png" style="vertical-align:middle" runat="server"></asp:Image>查看详情</A>&nbsp;
					<br />
					&nbsp;<A href="<%=UserRootUrl%>/blog/tagsedit.aspx?TagName=<%# HttpUtility.UrlEncode(Convert.ToString(Eval("ID"))) %>"><asp:Image ImageUrl="~/sitefiles/bairong/icons/editlist.gif" style=" vertical-align:middle" runat="server"></asp:Image>编辑</A>&nbsp;
					<br />
					&nbsp;<A href="<%=UserRootUrl%>/blog/tags/default.aspx?Delete=True&TagName=<%# HttpUtility.UrlEncode(Convert.ToString(Eval("ID"))) %>" onclick="return confirm(&quot;<%# Convert.ToString(Eval("ID")) %>篇图片使用了此标签，此操作将从所有图片中删除此标签，确定吗？&quot;);" ><asp:Image ImageUrl="~/sitefiles/bairong/icons/deletelist.gif" runat="server" style=" vertical-align:middle"></asp:Image>删除</A>&nbsp;
					<a href="javascript:undefined;" onClick="new Effect.SlideUp('menu_block<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">关闭菜单</a>
				</div>
			</div>
		   </itemtemplate>
		</asp:DataList>
	  <div class="separator"></div>
        <table cellspacing="0" style="" width="100%" height="25" class='subnav'>
		   <tr>
		   	<td colspan="2" class='line' height=1></td>
		   <tr>
		   <tr>
		   	<td colspan="2" height=5></td>
		   <tr>
          <tr>
            <td width="5"></td>
            <td>
				<bairong:sqlpager id="MySqlPager" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0 class='nav'> </bairong:sqlpager>
				<div class="separator"></div>
            </td>
          </tr>
        </table>
	  </td>
	<td width='8'></td>
  </tr>
</table>
<script type="text/javascript">Droppables.add('photolist_<%= GetCurrentSetID()%>', {hoverclass:'hoverclass123',onDrop:dropToPhotoList})</script>

  <div>
    <table cellspacing=0 border=0 width='100%' class="spAToolbar">
      <tr>
        <td width="100%" class="modhead"><table cellspacing="0" width="100%" class="fixedTable partheader" style="width:100%;">
              <tr>
                <td class="bold ellipse partDetail" nowrap><div class='ellipse' style="margin-left:10px;"><bairong:NoTagText id="SetContainerTitle" runat="server" /></div></td>
              </tr>
            </table></td>
        <td align="right"><nobr><ul>
            <li><A href="<%=UserRootUrl%>/photo/setadd.aspx"><asp:Image ImageUrl="~/sitefiles/bairong/icons/add.gif" runat="server"></asp:Image>新建相册</A></li>
            <li id="ReturnIcon" runat="server" Class="sppLast"><a href="sets"><img class="sppIcon" src="<%=RootUrl%>/livefiles/images/icon/return.gif" alt="" />返回</a></li>
          </ul></nobr></td>
      </tr>
    </table>
  </div>

<table id="set_<%= GetCurrentSetID()%>" width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	  	<td style="width:10px;"></td>
	  	<td id="SetEditContainer" runat="server" style="width:120px;" align="left">
			<div class="set_div">
				<div id="currentset_<%= GetCurrentSetID()%>" class="set_thumb_div"><a href="sets/default.aspx?SetID=<%= GetCurrentSetID()%>">
				<img src="<%= GetCurrentSetImageUrl()%>" width="75" height="75" alt="<%= HttpUtility.HtmlEncode(GetCurrentSetDescription()) %>"></a></div>
				<div class="set_title_div"><%= GetCurrentSetTitle() %>
					<br><span class="set_count_span"><%= GetContentCount(Convert.ToInt32(GetCurrentSetID()))%> 幅图片</span>
				</div>
			</div>
			<script type="text/javascript">Droppables.add('currentset_<%= GetCurrentSetID()%>', {hoverclass:'hoverclass123',onDrop:dropToCurrentSet})</script>
			<script type="text/javascript">Droppables.add('set_<%= GetCurrentSetID()%>', {hoverclass:'hoverclass123',onDrop:dropToSet})</script>
		</td>
		<td align="left">
			<asp:Repeater ID="SetRepeater" runat="server">
			  <itemtemplate>
			  	<div class="set_div">
					<div id="set_<%# Eval("SetID")%>" class="set_thumb_div"><a href="sets/default.aspx?SetID=<%# Eval("SetID")%>"><img src="<%# GetSetImageUrl(Convert.ToInt32(Eval("SetID")))%>" width="75" height="75" alt="<%# HttpUtility.HtmlEncode(Convert.ToString(Eval("Content"))) %>"></a></div>
					<div class="set_title_div"><%# Convert.ToString(Eval("SetName")) %>
						<br><span class="set_count_span"><%# GetContentCount(Convert.ToInt32(Eval("SetID")))%> 幅图片</span>
					</div>
				</div>
				<script type="text/javascript">Droppables.add('set_<%# Eval("SetID")%>', {hoverclass:'hoverclass123',onDrop:dropToSet})</script>
			   </itemtemplate>
			</asp:Repeater>
			<asp:DataList ID="SetPhotoDataList" ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="left" runat="server" RepeatColumns="6" RepeatDirection="Horizontal">
			  <itemtemplate>
				<div id="setphoto_<%# DataBinder.Eval(Container.DataItem, "ID") %>" style="width:140px;" class="photolist"><a href="javascript:undefined;"><IMG alt="拖动图片可将图片从相册中移除" src="<%# GetImageUrl((int)DataBinder.Eval(Container.DataItem, "ID"), (DateTime)DataBinder.Eval(Container.DataItem, "AddDate"), (string)DataBinder.Eval(Container.DataItem, "ImageType")) %>" style="cursor:move;"></a><span>15 jul 06</span></div>
				<nobr><A class=Plain href="javascript:undefined;" onClick="Effect.toggle('menu_setphoto<%# DataBinder.Eval(Container.DataItem, "ID") %>','slide'); return false;"><IMG src="<%=RootUrl%>/livefiles/images/icon/showMenu.gif" alt="点击显示图片菜单" width="12" height="14" align=absMiddle>菜单</A> <A class=Plain rel="lightbox[set]" href="<%# GetLightBoxImageUrl((int)DataBinder.Eval(Container.DataItem, "ID"), (DateTime)DataBinder.Eval(Container.DataItem, "AddDate"), (string)DataBinder.Eval(Container.DataItem, "ImageType")) %>">快速查看</A></nobr>
				<br />
				<script type="text/javascript">new Draggable('setphoto_<%# DataBinder.Eval(Container.DataItem, "ID") %>', {revert:true})</script>
				<div id="menu_setphoto<%# DataBinder.Eval(Container.DataItem, "ID") %>" class="popupMenu2" style="display:none;">
					<div>
						<nobr>&nbsp;标题：<%# Convert.ToString(Eval("Title")) %>&nbsp;</nobr>
						<div class="separator"></div>
						&nbsp;<A href="<%=UserRootUrl%>/photo/<%# DataBinder.Eval(Container.DataItem, "ID") %>.aspx"><asp:Image ImageUrl="~/sitefiles/bairong/icons/view.png" style="vertical-align:middle" runat="server"></asp:Image>查看详情</A>&nbsp;
						<br />
						&nbsp;<A href="<%=UserRootUrl%>/blog/tagsedit.aspx?TagName=<%# HttpUtility.UrlEncode(Convert.ToString(Eval("ID"))) %>"><asp:Image ImageUrl="~/sitefiles/bairong/icons/editlist.gif" style=" vertical-align:middle" runat="server"></asp:Image>编辑</A>&nbsp;
						<br />
						&nbsp;<A href="<%=UserRootUrl%>/blog/tags/default.aspx?Delete=True&TagName=<%# HttpUtility.UrlEncode(Convert.ToString(Eval("ID"))) %>" onclick="return confirm(&quot;<%# Convert.ToString(Eval("ID")) %>篇图片使用了此标签，此操作将从所有图片中删除此标签，确定吗？&quot;);" ><asp:Image ImageUrl="~/sitefiles/bairong/icons/deletelist.gif" runat="server" style=" vertical-align:middle"></asp:Image>删除</A>&nbsp;
						<a href="javascript:undefined;" onClick="new Effect.SlideUp('menu_setphoto<%# DataBinder.Eval(Container.DataItem, "ID") %>'); return false;">关闭菜单</a>
					</div>
				</div>
			   </itemtemplate>
			</asp:DataList>
			&nbsp;
		</td>
	  </tr>
	</table>

<!--<div id="container">
	<h1>Leightbox</h1>
	<p>
		<ul>
			<li><a style="cursor:pointer;" rel="lightbox1" class="lbOn">Leightbox 1</a></li>
		</ul>
	</p>
</div>

<div id="lightbox1" class="leightbox">
	<h1>Leightbox 1</h1>
	<p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec aliquet. Donec sit amet elit at nisl commodo pellentesque. Proin vel odio. Proin vitae mi eu libero consequat rhoncus. Pellentesque aliquam varius purus. Etiam ac mauris sit amet purus facilisis dapibus. Nulla tellus. In aliquam sem. Duis nisi velit, scelerisque egestas, feugiat id, suscipit et, mi. Vestibulum id erat eu enim nonummy fringilla.</p>
	<p class="footer">
		<a href="#" class="lbAction" rel="deactivate">Close</a>
	</p>
</div> -->
	
</asp:content>