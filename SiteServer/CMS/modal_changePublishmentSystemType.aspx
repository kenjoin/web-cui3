<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.ChangePublishmentSystemType" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body id="MyBody" runat="server">
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <asp:Panel ID="HeadquartersExists" runat="server">
    <table cellpadding="0" width="100%" align="center">
      <tr>
        <td colspan="2"> 总站点已经存在，站点“<%=GetSiteName()%>”不能转换为总站点 </td>
      </tr>
    </table>
    </asp:Panel>
  <asp:Panel ID="ChangeToSite" runat="server">
    <table cellpadding="0" width="100%" align="center">
      <tr>
        <td colspan="2"> 将站点“<%=GetSiteName()%>”转换为子站点&nbsp;
          <asp:RegularExpressionValidator
							runat="server"
							ID="PublishmentSystemDirValidator"
							ControlToValidate="PublishmentSystemDir"
							ValidationExpression="[^']+"
							ErrorMessage="*"
							Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="100" align="left"><bairong:help HelpText="实际在服务器中保存此网站的文件夹名称，此路径必须以英文或拼音命名。" Text="文件夹名称：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="PublishmentSystemDir" runat="server"/>
          <asp:RequiredFieldValidator
							ControlToValidate="PublishmentSystemDir"
							ErrorMessage="*"
							Display="Dynamic"
							runat="server"/></td>
      </tr>
      <tr>
        <td colspan="2"><bairong:help HelpText="从系统根目录选择需要转移到子站点的文件夹及文件。" Text="需要转移的文件夹及文件：" runat="server" ></bairong:help></td>
      </tr>
      <tr>
        <td colspan="2"><asp:CheckBoxList ID="FilesToSite" RepeatDirection="Horizontal" RepeatColumns="3" runat="server"></asp:CheckBoxList></td>
      </tr>
    </table>
    </asp:Panel>
  <asp:Panel ID="ChangeToHeadquarters" runat="server">
    <table cellpadding="0" width="100%" align="center">
      <tr>
        <td colspan="2"> 将站点“<%=GetSiteName()%>”转换为总站点 </td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="选择转移将把此站点内的文件夹及文件转移到系统根目录中。" Text="转移文件夹及文件：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsMoveFiles" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="转移" Value="true" Selected="true"></asp:ListItem>
            <asp:ListItem Text="不转移" Value="false"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
    </table>
    </asp:Panel>
  <table cellpadding="0" width="100%" align="center">
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Change" text="确 定" OnClick="Change_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
