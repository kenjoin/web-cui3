<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.UploadOrUrlImage" Trace="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<title>设置图片</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<META http-equiv=content-type content=text/html;charset=utf-8>
<script type="text/javascript" language="javascript">
<asp:Literal id="ltlScript" runat="server"></asp:Literal>
</script>
</head>
<body>
<bairong:Message runat="server"></bairong:Message>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">
  <table cellpadding="3" width="98%" align="center">
    <tr>
      <td width="120" align="center">选择上传图片的方式：</td>
      <td align="left"><asp:RadioButtonList ID="rblIsUpload" AutoPostBack="true" OnSelectedIndexChanged="rblIsUpload_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phUpload" runat="server">
    <tr>
      <td align="center">选择上传的图片：</td>
      <td align="left"><input type=file  id=myFile size="45" runat="server"/>
        <asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
    </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phUrl" runat="server">
    <tr>
      <td align="center">输入图片地址：</td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" id="tbImageUrl" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="tbImageUrl"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    </asp:PlaceHolder>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="上 传" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
    
  </table>
</form>
</body>
</html>