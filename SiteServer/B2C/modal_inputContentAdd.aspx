<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.Modal.InputContentAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>

<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<script language="javascript" src="../Inc/auxiliary.js"></script>
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" charset="utf-8" src="../../sitefiles/bairong/scripts/independent/validate.js"></script>
</HEAD><body>
<user:custom ID="Custom1" type="showpopwin" runat="server" />
<form id="myForm" enctype="multipart/form-data" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <site:AuxiliaryControl ID="ContentControl" runat="server"/>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" />
      </td>
    </tr>
  </table>
</form>
</body>
</HTML>
