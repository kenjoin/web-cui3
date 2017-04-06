<%@ Page Language="C#"  Inherits="SiteServer.Space.Space.Pages.IconBuilder" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ScriptHolder" runat="server">
	<script type="text/javascript" language="javascript">
	function upload_submit_form()
	{
		document.forms[0].encType="multipart/form-data";
		document.forms[0].submit();
		return true;
	}
	</script>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
  <div class="ContainerPadding" style="text-align:center">
	<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
			<td valign="top" width="300" align="left">
<div id="sidebar">
	<div class="Hint inner">
		<p class="Top">为您自己选择一个好看的头像,突出您的个性。<br /></p>
		<p style="margin-left:30px;"><asp:Image id="Preview" ImageUrl="~/sitefiles/bairong/icons/iconSize.gif" width="48" height="48" alt="图片预览" runat="server"></asp:Image></p>
		<p>头像的尺寸为 48 X 48 。</p>
	</div>
</div>
			</td>
			<td align="left" style="padding-left:20px;">
<div id="main">
	<div class="inner">
		<p class="Confirm" id="Confirm" runat="server">恭喜你，个人头像设置成功！</p>
		<div id="IconNotExists" runat="server">
			您还没有设置个人头像，在这里设置一下吧
		</div>
		<h4>请选择您喜欢的图片作为头像(支持jpg,gif,png格式):</h4>
		<dl>
			<dd><INPUT type=file id="MyFile" size=35 runat="server"><p></p></dd>
			<dd class="submit">
				<input type="button" class="button" onclick="upload_submit_form();" value="上传头像" />
			</dd>
		</dl>
		<!--您还可以：
		<ul>
			<li><a href="iconBuilder.aspx?select=true">在您的相册中选择一幅作为头像</a></li>
			<li><a href="iconBuilder.aspx?transfer=true">选择其他网站的图片作为头像</a></li>
		</ul>-->
	</div>
</div>
			</td>
		</tr>
	</table>
  </div>
</asp:content>
