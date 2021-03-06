﻿<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.BrandAdd" Trace="false"%>
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
      <td width="120" align="left"><bairong:help HelpText="品牌名称" Text="品牌名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="BrandName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="BrandName" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="BrandName" ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="120" align="left"><bairong:help HelpText="品牌网址" Text="品牌网址：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" id="BrandUrl" runat="server" /></td>
    </tr>
    <tr>
      <td width="120" align="left"><bairong:help HelpText="品牌LOGO" Text="品牌LOGO：" runat="server" ></bairong:help></td>
      <td align="left"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="400"><input id="IconUrlUploader" style="display:none;" type="file" class="colorblur" runat="server" />
              <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" id="IconUrl" runat="server" style="display:" /></td>
            <td rowspan="2" style="padding-left:10px;"><IMG class="preview" src='<%=GetPreviewImageSrc()%>' alt=图片预览 align="absmiddle" name="preview_IconUrl" width=88 height=70 id="preview_IconUrl"></td>
          </tr>
          <tr>
            <td valign="top"><a id="iconUrlLink1" style="" href="javascript:;" onClick="document.getElementById('iconUrlLink2').style.fontWeight = '';this.style.fontWeight = 'bold';document.getElementById('IconUrlUploader').style.display = '';document.getElementById('IconUrl').style.display = 'none'">上传图片</a>&nbsp; <a id="iconUrlLink2" style="font-weight:bold" href="javascript:;" onClick="document.getElementById('iconUrlLink1').style.fontWeight = '';this.style.fontWeight = 'bold';document.getElementById('IconUrlUploader').style.display = 'none';document.getElementById('IconUrl').style.display = ''">输入 URL</a></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td width="120" align="left"><bairong:help HelpText="品牌描述" Text="品牌描述：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" TextMode="MultiLine" onblur="this.className='colorblur';" Columns="40" Rows="4" id="Content" runat="server" /></td>
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
