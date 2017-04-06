<%@ Page Language="C#" Trace="false" Inherits="SiteServer.B2C.BackgroundPages.Modal.UploadSiteTemplate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<title>导入站点模板</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv=content-type content=text/html;charset=utf-8>
</head>
<body>
<bairong:Message runat="server"></bairong:Message>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">
  <table cellpadding="3" cellspacing="3" width="95%" align="center">
    <tr>
      <td width="120"><bairong:help HelpText="选择导入站点模板的方式" Text="导入方式：" runat="server" ></bairong:help></td>
      <td>
      	<asp:RadioButtonList ID="rblImportType" AutoPostBack="true" OnSelectedIndexChanged="rblImportType_SelectedIndexChanged" runat="server"></asp:RadioButtonList>
      </td>
    </tr>
    <asp:PlaceHolder ID="phUpload" runat="server">
    <tr>
      <td width="120"><bairong:help HelpText="选择需要上传的压缩包" Text="选择压缩包：" runat="server" ></bairong:help></td>
      <td><input type="file" id="myFile" size="35" runat="server"/>
        <asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
    </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phDownload" runat="server">
    <tr>
      <td width="120"><bairong:help HelpText="输入下载地址" Text="压缩包下载地址：" runat="server" ></bairong:help></td>
      <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="260" id="tbDownloadUrl" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="tbDownloadUrl" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
    </tr>
    </asp:PlaceHolder>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" id="Submit" text="导 入" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;
        <input type="button" class="button" value="取 消" onClick="javascript:window.parent.hidePopWin();" /></td>
    </tr>
  </table>
</form>
</body>
</html>