<%@ Page Language="C#" Inherits="SiteServer.Space.MyWeb.Pages.MyWebTagsEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.MyWeb.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
<div class="ContainerPadding">
<div class="ThinCase">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  	<td width="30"></td>
    <td align="left">
		<h3><bairong:NoTagText id="EditTagName" runat="server" /></h3>
		<p><asp:TextBox ID="NewTagName" runat="server" style="font-size: 24px; line-height:28px; padding-left: 3px; height:28px;" size="30" CssClass="text"></asp:TextBox>
			<asp:RequiredFieldValidator
			ControlToValidate="NewTagName"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/>
		</p>
		<p><asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="确 认" CssClass="button"></asp:Button>&nbsp;&nbsp;<asp:Button ID="Cancel" OnClick="Cancel_Click" runat="server" Text="取 消" CssClass="button"></asp:Button></p>			

		<h4 class="Separated">提示</h4>
			
		<bairong:NoTagText id="Tip" runat="server" />
	</td>
  </tr>
</table>
	</div>

	<div class="separator"></div>
  </div>
</asp:content>