<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundConfigurationTheme" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="Prototype" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script>
function ShowImg(obj, imageID, rootUrl){
	if(obj.value.search(/\.bmp|\.jpg|\.jpeg|\.gif|\.png$/i) != -1) {
		var imageUrl = obj.value;
		if (imageUrl){
			if (imageUrl.charAt(0) == '~'){
				imageUrl = imageUrl.replace('~', rootUrl);
			}
		}
		if(imageUrl && imageUrl.substr(0,2)=='//'){
			imageUrl = imageUrl.replace('//', '/');
		}
		$(imageID).src=imageUrl;
	}
}
</script>
</HEAD><body>
<form id="MyForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">显示界面设置</div>
    <br>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td align="left">
             <bairong:help HelpText="设置问答系统名称" Text="问答系统名称：" runat="server" ></bairong:help>							  </td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="AskName" runat="server" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="AskName"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
        <td width="170" align="left"><bairong:help HelpText="问答系统显示样式" Text="问答系统显示样式：" runat="server" ></bairong:help>        </td>
        <td align="left">
        <asp:DropDownList ID="DefaultTheme" runat="server"></asp:DropDownList>
        </td>
      </tr>
      
    <tr>
        <td align="left">
             <bairong:help HelpText="设置LOGO图片" Text="LOGO图片：" runat="server" ></bairong:help>							  </td>
        <td align="left">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="400"><input id="LogoUrlUploader" style="display:none; width:345px;" type="file" class="colorblur" runat="server" /><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="65" MaxLength="50" id="LogoUrl" runat="server" style="display:" /><br>
(建议尺寸：180×70)</td>
    <td rowspan="2"><IMG src='<%=PreviewImageSrc%>' alt=图片预览 align="absmiddle" name="preview_LogoUrl" id="preview_LogoUrl"></td>
  </tr>
  <tr>
    <td valign="top"><a id="logoUrlLink1" style="" href="javascript:;" onClick="$('logoUrlLink2').style.fontWeight = '';this.style.fontWeight = 'bold';$('LogoUrlUploader').style.display = '';$('LogoUrl').style.display = 'none'">上传图片</a>&nbsp;
                                    <a id="logoUrlLink2" style="font-weight:bold" href="javascript:;" onClick="$('logoUrlLink1').style.fontWeight = '';this.style.fontWeight = 'bold';$('LogoUrlUploader').style.display = 'none';$('LogoUrl').style.display = ''">输入 URL</a></td>
    </tr>
</table>
        </td>
    </tr>
    <tr>
        <td align="left">
             <bairong:help HelpText="设置页面底部显示信息" Text="页面底部显示信息：" runat="server" ></bairong:help>							  </td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Rows="4" Columns="80" MaxLength="500" id="AskFooter" runat="server" />
				<asp:RegularExpressionValidator runat="server" ControlToValidate="AskFooter"
					ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />			</td>
    </tr>
      <tr>
        <td colspan="2" align="center">
        	<asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" />        </td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
