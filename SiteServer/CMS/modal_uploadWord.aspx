<%@ Page Language="C#" Trace="false" Inherits="SiteServer.CMS.BackgroundPages.Modal.UploadWord" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<title>上传Word文件</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<META http-equiv=content-type content=text/html;charset=utf-8>
<%=Scripting%>
</head>
<body>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr id="previewRow" style="display:none">
      <td align="center"><IMG class="preview" src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview" id="preview"></td>
    </tr>
    <tr>
      <td align="center" valign="top" ><table align="center" width="98%">
          <tr>
            <td width="180"><bairong:help HelpText="请选择Word文件上传" Text="请选择Word文件上传：" runat="server" ></bairong:help></td>
            <td><asp:Literal ID="ltlContent" runat="server"></asp:Literal>
              <br />
              <input type=file  id=myFile size="35" runat="server"/>
              <asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
          </tr>
          <tr>
            <td colspan="2"><asp:CheckBox id="IsClearFormat" Checked="true" runat="server" Text="上传时清除Word格式"/></td>
          </tr>
          <tr>
            <td colspan="2"><asp:CheckBox id="IsClearImages" runat="server" Text="上传时清除Word中的图片"/></td>
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