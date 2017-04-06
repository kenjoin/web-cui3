<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.Modal.AddSet" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="TitleHolder" runat="server">
	<title><bairong:NoTagText ID="SetTitle" runat="server" /></title>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<br />
<space:Hint id="Hint" runat="server" type="Error" />
<table cellpadding="2" cellspacing="2" align="center">
  <tr>
	<td>
	相册名称：
	</td>
  </tr>
  <tr>
	<td>
	<asp:TextBox ID="SetName" runat="server" style="width:250px;" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"></asp:TextBox>
	<asp:RequiredFieldValidator
	ControlToValidate="SetName"
	ErrorMessage=" *"
	Display="Dynamic"
	runat="server"
	/>
	</td>
  </tr>
  <tr>
	<td>
	相册简介：
	</td>
  </tr>
  <tr>
	<td>
	<asp:TextBox ID="Description" runat="server" TextMode="MultiLine" Rows="6" style="width:250px;" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"></asp:TextBox>
	</td>
  </tr>
  <tr>
	<td align="center" height="40">
		<button ID="AddButton" OnServerClick="AddButton_ServerClick" CausesValidation="true" runat="server" class="button">添加</button>&nbsp;&nbsp;<button ID="CancelButton" runat="server" class="button">取消</button>
	</td>
  </tr>
</table>

</asp:content>
