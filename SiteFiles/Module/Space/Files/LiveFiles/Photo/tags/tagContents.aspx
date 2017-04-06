<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoTagContents" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">

<table width="100%" cellspacing="0" cellpadding="0">
	<tr valign="top">
		<td>
			
			<TABLE cellSpacing=0 width="180">
  <TBODY>
  <TR>
    <TD id=Hint>
      <DIV style=" width:180px;">
	  <br />
	  <ul>
	  	<li>
          <space:UserLink NavigateUrl="photo/tags/edit/_TagName_.aspx" isReplaceQueryString="True" runat="server"><div>编辑此标签</div></space:UserLink>
		<li>
		  <space:UserLink NavigateUrl="photo/tags/default.aspx?Delete=True" Querys="TagName" runat="server" onclick="return confirm(&quot;此操作将从所有图片中删除此标签，确定吗？&quot;);"><div>删除此标签</div></space:UserLink>
	  </ul>
      <P><B><space:ResourceHelp ResourceName="什么是标签" runat="server" /></B><BR>
	  	<space:ResourceHelp ResourceName="什么是标签解释" runat="server" />
	  </P></DIV><IMG height=1 width=200> </TD>
		</TR></TBODY></TABLE>
		</td>
		<td width="100%">
			<space:PhotoThumbnailContents runat="server" RepeatColumns="4" />
		</td>		
	</tr>
</table>

</asp:content>