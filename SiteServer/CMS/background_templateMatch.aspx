<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundTemplateMatch" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tab">
    <asp:Literal ID="ltlTabHeader" runat="server"></asp:Literal>
    &nbsp;<a href="http://help.siteserver.cn/manage/211/779.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看匹配模板帮助" align="absmiddle"></a>
    <div class="clearer"></div>
  </div>
  <div id="column1" class="column">
    <div class="tips">选择左侧栏目（可多选）与右侧模版（单选），点击“匹配”按钮进行模版匹配<br>
      左侧栏目列表中第一个括号代表对应栏目所匹配的栏目模版，第二个括号代表栏目下内容页面所匹配的显示模版。</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="300" align="center"><bairong:help HelpText="请选择要匹配的栏目名称（可多选）" Text="栏目列表：" runat="server" ></bairong:help></td>
        <td align="center" valign="middle">&nbsp;</td>
        <td align="center"><bairong:help HelpText="请选择要匹配的栏目模板名称" Text="栏目模板列表：" runat="server" ></bairong:help></td>
        <td align="center" valign="middle">&nbsp;</td>
        <td align="center"><bairong:help HelpText="请选择要匹配的内容模板名称" Text="内容模板列表：" runat="server" ></bairong:help></td>
      </tr>
      <tr>
        <td width="300" align="right"><asp:ListBox ID="NodeIDCollectionToMatch" SelectionMode="Multiple" Rows="25" runat="server"></asp:ListBox></td>
        <td align="center" valign="middle"><asp:Button class="button" id="MatchChannelTemplateButton" text="<- 匹配" onclick="MatchChannelTemplateButton_OnClick" runat="server" />
          <br>
          <br>
          <asp:Button class="button" id="RemoveChannelTemplateButton" text="-> 取消" onclick="RemoveChannelTemplateButton_OnClick" runat="server" /></td>
        <td align="left"><asp:ListBox ID="ChannelTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" SelectionMode="Single" Rows="25" runat="server"></asp:ListBox></td>
        <td align="center" valign="middle"><asp:Button class="button" id="MatchContentTemplateButton" text="<- 匹配" onclick="MatchContentTemplateButton_OnClick" runat="server" />
          <br>
          <br>
          <asp:Button class="button" id="RemoveContentTemplateButton" text="-> 取消" onclick="RemoveContentTemplateButton_OnClick" runat="server" /></td>
        <td align="left"><asp:ListBox ID="ContentTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" SelectionMode="Single" Rows="25" runat="server"></asp:ListBox></td>
      </tr>
    </table>
    <br>
  </div>
  <asp:PlaceHolder ID="phCreate" runat="server">
    <table cellpadding="3" width="95%" align="center">
      <tr align="left">
        <td><asp:Button class="button" ID="CreateChannelTemplate" Text="生成栏目模版" OnClick="CreateChannelTemplate_Click" runat="server" />
          &nbsp;&nbsp;
          <asp:Button class="button" ID="CreateSubChannelTemplate" Text="生成下级栏目模版" OnClick="CreateSubChannelTemplate_Click" runat="server" />
          &nbsp;&nbsp;
          <asp:Button class="button" ID="CreateContentTemplate" Text="生成内容模版" OnClick="CreateContentTemplate_Click" runat="server" />
          &nbsp;&nbsp;
          <asp:Button class="button" ID="CreateSubContentTemplate" Text="生成下级内容模版" OnClick="CreateSubContentTemplate_Click" runat="server" /></td>
      </tr>
    </table>
  </asp:PlaceHolder>
</form>
</body>
</HTML>
