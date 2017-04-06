<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundChannel" enableViewState = "false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">管理栏目&nbsp;<a href="http://help.siteserver.cn/manage/188.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看栏目管理帮助" align="absmiddle"></a></div>
    <table cellspacing="1" cellpadding="1" Align="center" border="0" id="MyDataGrid" style="width:100%;">
      <tr class="summary-title" align="Center" style="height:22px;">
        <td align="Center" style="width:50px;">&nbsp;</td>
        <td align="Left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;栏目名</td>
        <td align="Right" style="width:100px;">栏目索引</td>
        <td align="Center" style="width:30px;">上升</td>
        <td align="Center" style="width:30px;">下降</td>
        <td align="Center" style="width:80px;">&nbsp;</td>
        <td align="Center" style="width:80px;">&nbsp;</td>
        <td align="Center" style="width:30px;">&nbsp;</td>
        <td align="Center" style="width:20px;"></td>
      </tr>
      <asp:Repeater ID="MyRepeater" runat="server">
        <itemtemplate>
          <asp:Literal id="ltlHtml" runat="server" />
        </itemtemplate>
      </asp:Repeater>
    </table>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:PlaceHolder id="PlaceHolder_AddChannel" runat="server">
                <asp:Button class="button" id="AddChannel1" Text="快速添加" runat="server" />
                &nbsp;
                <asp:Button class="button" id="AddChannel2" Text="添加栏目" runat="server" />
                &nbsp; </asp:PlaceHolder>
              <asp:PlaceHolder id="PlaceHolder_ChannelEdit" runat="server">
                <asp:Button class="button" id="AddToGroup" Text="设置栏目组" runat="server" />
                &nbsp;
                <asp:Button class="button" id="SelectEditColumns" Text="编辑项" runat="server" />
                &nbsp; </asp:PlaceHolder>
              <asp:PlaceHolder id="PlaceHolder_Translate" runat="server">
                <asp:Button class="button" id="Translate" Text="转 移" runat="server" />
                &nbsp; </asp:PlaceHolder>
              <asp:PlaceHolder id="PlaceHolder_Import" runat="server">
                <asp:Button class="button" id="Import" Text="导 入" runat="server" />
                &nbsp; </asp:PlaceHolder>
              <asp:Button class="button" id="Export" Text="导 出" runat="server" />
              &nbsp;
              <asp:PlaceHolder id="PlaceHolder_Delete" runat="server">
                <asp:Button class="button" id="Delete" Text="删 除" runat="server" />
                &nbsp; </asp:PlaceHolder>
              <asp:PlaceHolder id="PlaceHolder_Create" runat="server">
                <asp:Button class="button" id="Create" Text="生 成" runat="server" />
                &nbsp; </asp:PlaceHolder>
              <asp:PlaceHolder id="PlaceHolder_Publish" runat="server">
                <asp:Button class="button" id="Publish" Text="发 布" runat="server" />
              </asp:PlaceHolder></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>