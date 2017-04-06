<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundConfigurationComments" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" src="../Inc/auxiliary.js"></script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="column">
    <div class="columntitle">信息评论配置</div>
    <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="判断此栏目是否可以评论" Text="栏目可以评论：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsChannelCommentable"
			RepeatDirection="Horizontal"
			runat="server">
            <asp:ListItem Text="是" Value="True" />
            <asp:ListItem Text="否" Value="False" Selected="True"/>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="判断此栏目下内容是否可以评论" Text="内容可以评论：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsContentCommentable"
			RepeatDirection="Horizontal"
			runat="server">
            <asp:ListItem Text="是" Value="True" Selected="True" />
            <asp:ListItem Value="False" Text="否"/>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="设置未登录用户是否可以评论" Text="未登录用户是否可以评论：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsCommentAnonymous" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置评论是否需要审核" Text="评论是否需要审核：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsCommentMustCheck" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="评论提交成功提示信息" Text="评论提交成功提示信息：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="300" Height="80" TextMode="MultiLine" MaxLength="50" id="CommentMessageSuccess" runat="server" /></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="评论提交失败提示信息" Text="评论提交失败提示信息：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="300" Height="80" TextMode="MultiLine" MaxLength="50" id="CommentMessageFailure" runat="server" /></td>
      </tr>
    </table>
    <br>
    <table width="95%" align="center" cellspacing="0" cellpadding="0" >
      <tr>
        <td align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server"/></td>
      </tr>
    </table>
  </div>
  <br />
</form>
</body>
</HTML>
