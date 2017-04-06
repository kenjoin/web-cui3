<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.ColorAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="2" cellspacing="2">
    <tr>
      <td width="120" align="left"><bairong:help HelpText="颜色名称" Text="颜色名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="ColorName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="ColorName" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="ColorName" ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="120" align="left"><bairong:help HelpText="颜色代码" Text="颜色代码：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" id="Code" runat="server" /></td>
    </tr>
    <tr>
      <td width="120" align="left"><bairong:help HelpText="颜色图片" Text="颜色图片：" runat="server" ></bairong:help></td>
      <td align="left"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="300"><input id="IconUrlUploader" style="display:none;" type="file" class="colorblur" runat="server" />
              <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" id="IconUrl" runat="server" style="display:" /></td>
            <td rowspan="2" style="padding-left:0px;"><IMG src='<%=GetPreviewImageSrc()%>' alt=图片预览 align="absmiddle" name="preview_IconUrl" id="preview_IconUrl"></td>
          </tr>
          <tr>
            <td valign="top"><a id="iconUrlLink1" style="" href="javascript:;" onClick="document.getElementById('iconUrlLink2').style.fontWeight = '';this.style.fontWeight = 'bold';document.getElementById('IconUrlUploader').style.display = '';document.getElementById('IconUrl').style.display = 'none'">上传图片</a>&nbsp; <a id="iconUrlLink2" style="font-weight:bold" href="javascript:;" onClick="document.getElementById('iconUrlLink1').style.fontWeight = '';this.style.fontWeight = 'bold';document.getElementById('IconUrlUploader').style.display = 'none';document.getElementById('IconUrl').style.display = ''">输入 URL</a></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
