<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.LiveServerConfigurationPhoto" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">相册模块设置</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="220" align="left"><bairong:help HelpText="图片是否上传到指定目录" Text="图片是否上传到指定目录：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="PhotoIsTranslate" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="PhotoIsTranslate_SelectedIndexChanged" runat="server"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="PhotoIsTranslatePlaceHolder" Visible="false" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="上传图片文件夹路径。" Text="上传图片文件夹路径：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" id="PhotoImageDirectoryPath" runat="server" /></td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="图片访问地址前缀。" Text="图片访问地址前缀：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" id="PhotoImageUrlPrefix" runat="server" /></td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
