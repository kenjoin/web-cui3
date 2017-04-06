<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.ConsoleAuxiliaryTableAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
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
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />
      辅助表&nbsp;<a href="http://help.siteserver.cn/manage/222/806.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看添加辅助表帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="140" align="left"><bairong:help HelpText="辅助表的唯一标识，当在数据库中创建辅助表时此标识作为被创建表的名称" Text="辅助表标识：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="22" id="TableENName" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="TableENName" ErrorMessage="*" Display="Dynamic"
                                    runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="TableENName"
						ValidationExpression="[a-zA-Z0-9_]+" ErrorMessage=" 只允许包含字母、数字以及下划线" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="此处填入辅助表的名称" Text="辅助表名称：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="TableCNName" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="TableCNName" ErrorMessage="*" Display="Dynamic"
                                    runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="TableCNName"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="此处填入辅助表的简介" Text="辅助表简介：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" Rows="4" TextMode="MultiLine" id="Description" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="Description"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="栏目辅助表指为栏目属性设置的辅助表，在默认栏目属性不够使用时可以为此栏目设置栏目辅助表。后台内容辅助表指在后台管理系统中内容存放的表，每个站点必须设置一个内容辅助表。前台内容辅助表和其他辅助表为系统预留类型，预留给本系统的以后版本使用。" Text="辅助表类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="AuxiliaryTableType" RepeatDirection="Horizontal" RepeatColumns="6" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="添 加" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;
          <input type="button" class="button" value="返 回" onClick="javascript:location.href='console_auxiliaryTable.aspx';" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
