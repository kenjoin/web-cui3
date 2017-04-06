<%@ Page Language="C#" Trace="false" Inherits="SiteServer.B2C.BackgroundPages.Modal.UploadAttachment" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<title>上传文件</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv=content-type content=text/html;charset=utf-8>
<%=Scripting%>
</head>
<body>
<bairong:Message runat="server"></bairong:Message>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td align="center" valign="top" ><table align="center" width="95%">
          <tr>
            <td width="120"><bairong:help HelpText="选择需要上传的文件" Text="选择上传文件：" runat="server" ></bairong:help></td>
            <td><input type="file" id="myFile" size="35" runat="server"/>
              <asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td align="center"><asp:Button class="button" id="Submit" text="上 传" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;
        <input type="button" class="button" value="取 消" onClick="javascript:window.parent.hidePopWin();" /></td>
    </tr>
  </table>
</form>
</body>
</html>