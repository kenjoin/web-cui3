<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<table style="width:300px;" border=0 cellpadding="3" align="center" cellspacing=3 class="partsmb">
<tr>
  <td colspan="3" height="5"></td>
</tr>
<tr>
  <td colspan="3" align="center" height="28"><strong>请输入用户名密码进入您的个人空间	</strong></td>
  </tr>
<tr>
  <td width='8'></td>
	<td class="bvBody" align="right">
		<div class="CommonFormFieldName"><space:ResourceLabel runat="server" ResourceName="Login_UserName" /></div>	</td>
	<td align="left" class="bvBody">
		<asp:TextBox id="username" runat="server" size="30" CssClass="text" maxlength="64" />	</td>
</tr>
<tr>
  <td width='8'></td>
	<td align="right" class="bvBody">
		<div class="CommonFormFieldName"><space:ResourceLabel runat="server" ResourceName="Login_Password" /></div>	</td>
	<td align="left" class="bvBody">
		<asp:TextBox TextMode="Password" id="password" runat="server" size="30" CssClass="text" maxlength="64" />	</td>
</tr>
<tr>
  <td width='8'></td>
	<td></td>
	<td align="left" class="bvBody" nowrap="true">
		<asp:CheckBox type="checkbox" Text="在此计算机上保存我的信息。" runat="server" id="autoLogin" />	</td>
</tr>
<tr>
  <td colspan="3" align="center" height="28">
	<asp:Button id="loginButton" text="登 录" CssClass="button" runat="server"/>  </td>
  </tr>
</table>
