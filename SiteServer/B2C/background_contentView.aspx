<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.BackgroundContentView" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" src="../Inc/auxiliary.js"></script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">查看内容 </div>
    <asp:Literal ID="ltlScripts" runat="server"></asp:Literal>
    <table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
      <tr height="120">
        <td class="tdbg"><table width="98%" align="center" cellpadding="3" cellspacing="3">
            <tr>
              <td width="150"><bairong:help HelpText="包含此信息的栏目名称" Text="栏目名：" runat="server" ></bairong:help></td>
              <td colspan="2"><asp:Literal ID="ltlNodeName" runat="server"/></td>
            </tr>
            <asp:Repeater ID="MyRepeater" runat="server">
              <itemtemplate>
                <asp:Literal id="ltlHtml" runat="server" />
              </itemtemplate>
            </asp:Repeater>
            <tr id="RowTags" runat="server">
              <td width="150"><bairong:help HelpText="此内容的标签" Text="内容标签：" runat="server"></bairong:help></td>
              <td colspan="2"><asp:Literal id="ltlTags" runat="server"/></td>
            </tr>
            <tr id="RowContentGroup" runat="server">
              <td width="150"><bairong:help HelpText="此信息所属的内容组" Text='所属内容组：'  runat="server" ></bairong:help></td>
              <td colspan="2"><asp:Literal ID="ltlContentGroup" runat="server"/></td>
            </tr>
            <tr>
              <td width="150"><bairong:help HelpText="内容的最后修改日期" Text="最后修改日期：" runat="server" ></bairong:help></td>
              <td colspan="2"><asp:Literal id="ltlLastEditDate" runat="server" /></td>
            </tr>
            <tr>
              <td width="150"><bairong:help HelpText="内容的添加人" Text="添加人：" runat="server" ></bairong:help></td>
              <td colspan="2"><asp:Literal id="ltlAddUserName" runat="server" /></td>
            </tr>
            <tr>
              <td width="150"><bairong:help HelpText="内容的最后修改人" Text="最后修改人：" runat="server" ></bairong:help></td>
              <td colspan="2"><asp:Literal id="ltlLastEditUserName" runat="server" /></td>
            </tr>
            <tr>
              <td width="150"><bairong:help HelpText="内容的状态" Text='状态：'  runat="server" ></bairong:help></td>
              <td colspan="2"><asp:Literal ID="ltlContentLevel" runat="server"/></td>
            </tr>
            <tr>
              <td colspan="3" align="center" height="40" valign="middle"><asp:Button class="button" id="Submit" text="审 核" runat="server"/>
                &nbsp;&nbsp;
                <input class="button" type="button" onClick="submitPreview();" value="预 览" />
                &nbsp;&nbsp;
                <input class="button" type="button" onClick="location.href='<%=ReturnUrl%>';return false;" value="返 回" /></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </DIV>
</form>
<br />
</body>
</html>
