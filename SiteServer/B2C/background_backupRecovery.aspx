<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundBackupRecovery" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
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
    <div class="columntitle">数据恢复&nbsp;<a href="http://help.siteserver.cn/function/203/765.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看数据回复帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="请选择要恢复的备份数据类型" Text="需要恢复的备份类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="BackupType" AutoPostBack="true" OnSelectedIndexChanged="Options_SelectedIndexChanged" runat="server"></asp:DropDownList></td>
      </tr>
      <asp:PlaceHolder ID="PlaceHolder_Delete" runat="server">
        <tr>
          <td width="160" align="left"><bairong:help HelpText="清除站点栏目及内容" Text="清除站点栏目及内容：" runat="server" ></bairong:help></td>
          <td align="left"><asp:RadioButtonList ID="IsDeleteChannels" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Text="清除站点栏目及内容" Value="True"></asp:ListItem>
              <asp:ListItem Text="保留站点栏目及内容" Value="False" Selected="true"></asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
        <tr>
          <td width="160" align="left"><bairong:help HelpText="清除站点显示模板" Text="清除站点显示模板：" runat="server" ></bairong:help></td>
          <td align="left"><asp:RadioButtonList ID="IsDeleteTemplates" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Text="清除站点显示模板" Value="True"></asp:ListItem>
              <asp:ListItem Text="保留站点显示模板" Value="False" Selected="true"></asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
        <tr>
          <td width="160" align="left"><bairong:help HelpText="清除站点文件" Text="清除站点文件：" runat="server" ></bairong:help></td>
          <td align="left"><asp:RadioButtonList ID="IsDeleteFiles" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Text="清除站点文件" Value="True"></asp:ListItem>
              <asp:ListItem Text="保留站点文件" Value="False" Selected="true"></asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="是否覆盖同名数据" Text="是否覆盖同名数据：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsOverride" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="覆盖同名数据" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="不覆盖同名数据" Value="False"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr style="display:none">
        <td width="160" align="left"><bairong:help HelpText="请选择恢复方式" Text="恢复方式：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsRecoveryByUpload" AutoPostBack="true" OnSelectedIndexChanged="Options_SelectedIndexChanged" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr  style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="160" align="left">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <asp:PlaceHolder ID="PlaceHolderByUpload" runat="server">
        <tr>
          <td width="160" align="left"><bairong:help HelpText="选择备份的文件" Text="选择备份文件：" runat="server" ></bairong:help></td>
          <td><input type=file  id=myFile size="35" runat="server"/>
            <asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
        </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="PlaceHolderByServer" runat="server">
        <tr>
          <td width="160" align="left"><bairong:help HelpText="选择备份的文件" Text="选择备份文件：" runat="server" ></bairong:help></td>
          <td> sdf </td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="RecoveryButton" text="开始恢复" onclick="RecoveryButton_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
