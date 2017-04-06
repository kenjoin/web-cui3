<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.TemplateFilePathRule" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>页面命名规则</title>
<script language="javascript" src="../Inc/auxiliary.js"></script>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="98%" align="center">
    <tr id="FilePathRow" runat="server">
      <td width="220" align="left"><bairong:help HelpText="生成栏目页的文件路径" Text="生成页面路径：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="FilePath" runat="server"/>
        <asp:RegularExpressionValidator
					runat="server"
					ControlToValidate="FilePath"
					ValidationExpression="[^']+"
					ErrorMessage="*"
					Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="220" align="left"><bairong:help HelpText="系统生成文件时采取的下级栏目页文件名规则" Text="下级栏目页面命名规则：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="ChannelFilePathRule" runat="server"/>
        <asp:HyperLink ID="CreateChannelRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink></td>
    </tr>
    <tr>
      <td width="220" align="left"><bairong:help HelpText="系统生成文件时采取的下级内容页文件名规则" Text="下级内容页面命名规则：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="ContentFilePathRule" runat="server"/>
        <asp:HyperLink ID="CreateContentRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink></td>
    </tr>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" id="Ok" text="确 定" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
