<%@ Page Language="C#" Trace="false" Inherits="SiteServer.CMS.BackgroundPages.Modal.InputContentImport" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<title>导入内容</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<META http-equiv=content-type content=text/html;charset=utf-8>
</head>
<body>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td align="left"><bairong:help HelpText="选择需要上传的栏目文件" Text="栏目文件：" runat="server"></bairong:help></td>
      <td align="left"><input type=file  id=myFile size="35" runat="server"/>
        <asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置从第几条开始导入" Text="从第几条开始导入：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" id="ImportStart" runat="server"/>
        (默认为第一条) </td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置共导入几条" Text="共导入几条：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" id="ImportCount" runat="server"/>
        (默认为全部导入) </td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置内容的审核状态" Text='审核状态：'  runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsChecked" RepeatDirection="Horizontal" runat="server"/></td>
    </tr>
  </table>
  </td>
  </tr>
  <tr>
    <td align="center"><asp:Button class="button" id="Ok" text="导 入" onclick="Ok_OnClick" runat="server"/>
      &nbsp;&nbsp;
      <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
  </tr>
  </table>
</form>
</body>
</html>
