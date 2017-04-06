<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.GoodsPhotoSelect" Trace="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<title>关联商品相册图片</title>
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
      <td align="left">
          <asp:Repeater ID="rptPhotos" runat="server">
          <itemtemplate>
          <div style="margin: 2px 10px; float: left">
            <input name="PhotoIDCollection" type="checkbox" value="<%#DataBinder.Eval(Container.DataItem,"ID")%>">
            <input id="Url_<%#DataBinder.Eval(Container.DataItem,"ID")%>" name="Url_<%#DataBinder.Eval(Container.DataItem,"ID")%>" type="hidden" value="<%#ParseIconUrl((string)DataBinder.Eval(Container.DataItem,"SmallUrl"))%>">
            <img src="<%#ParseIconUrl((string)DataBinder.Eval(Container.DataItem,"SmallUrl"))%>" />
          </div>
          </itemtemplate>
          </asp:Repeater>
      </td>
    </tr>
    <tr>
      <td align="center"><asp:Button class="button" id="Submit" text="确 定" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
    
  </table>
</form>
</body>
</html>