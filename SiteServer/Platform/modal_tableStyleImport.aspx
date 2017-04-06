<%@ Page Language="C#" Trace="false" Inherits="BaiRong.BackgroundPages.Modal.TableStyleImport" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<title>导入表样式</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<META http-equiv=content-type content=text/html;charset=utf-8>
</head>
<body>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td align="center" valign="top" ><table align="center" width="95%">
          <tr>
            <td align="left"><bairong:help HelpText="选择需要上传的表样式文件" Text="表样式文件：" runat="server"></bairong:help></td>
            <td align="left"><input type=file  id=myFile size="35" runat="server"/>
              <asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
          </tr>
        </table></td>
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
