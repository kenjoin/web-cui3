<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<table width="100%" border=0 cellspacing=0>
  <tr>
	<td width='8'></td>
	<td><CENTER>
	
		<asp:DataList ID="MyDataList" ItemStyle-HorizontalAlign="left" ItemStyle-Width="150" runat="server">
		  <itemtemplate>
		  	<div><nobr><bairong:NoTagText id="Photo" runat="server" /></nobr></div>
			<nobr><bairong:NoTagText id="PhotoMenu" runat="server" /> <bairong:NoTagText id="LightboxView" runat="server" /></nobr>
			<br />
			<DIV class="popupMenu2 StreamView" id="menu_block<%# DataBinder.Eval(Container.DataItem, "ID") %>" style="display:none;">
			  <span class="bold"><bairong:AjaxTextEditor id="PhotoTitle" EmptyText="点击添加图片标题" runat="server" /></span>	
			  <bairong:AjaxTextEditor id="PhotoDescription" Multiple="true" EmptyText="点击添加图片介绍" runat="server" />	  
				  <P class=Privacy>
					<nobr><space:PhotoSecurityItem id="PhotoSecurityItem" runat="server" /> | <a href="javascript:undefined;" onClick="Effect.toggle('menu_block<%# DataBinder.Eval(Container.DataItem, "ID") %>','blind'); return false;">关闭菜单</a></nobr>
				  </P>
				  <P class=Do>上传于 <bairong:NoTagText id="UploadDate" runat="server" /><bairong:NoTagText id="PhotoManager" runat="server" /></P>
				  <P class=Activity>(<bairong:NoTagText id="CommentNum" runat="server" /> / 被浏览了<strong><%# DataBinder.Eval(Container.DataItem, "Hits") %></strong> 次)  </P>
			</DIV>
			<br clear="all" />
		  </itemtemplate>
		</asp:DataList>
	  </CENTER>
	  <div class="separator"></div>
        <table cellspacing="0" style="" width="100%" height="25" class='subnav'>
		   <tr>
		   	<td colspan="2" height=5></td>
		   <tr>
          <tr>
            <td width="5"></td>
            <td>
				<bairong:sqlpager id="MySqlPager" PagerStyle="NumericPages" PagingMode="NonCached" Unit="幅图片" runat="server" Width="100%" cellspacing=0 border=0> </bairong:sqlpager>
            </td>
          </tr>
        </table>
	  </td>
	<td width='8'></td>
  </tr>
</table>