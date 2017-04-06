<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.MachineAdd" Trace="false"%>
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
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" width="95%" align="center">
    <tr>
      <td  align="left"><bairong:help HelpText="服务器名称" Text="服务器名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="MachineName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="MachineName" ErrorMessage=" *" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="MachineName"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td  align="left"><bairong:help HelpText="服务器连接方式" Text="连接方式：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList ID="ConnectionType" AutoPostBack="true" OnSelectedIndexChanged="ConnectionType_SelectedIndexChanged" runat="server"></asp:DropDownList></td>
    </tr>
    <asp:PlaceHolder ID="PlaceHolder_Ftp" runat="server">
      <tr>
        <td  align="left"><bairong:help HelpText="FTP服务器地址" Text="FTP服务器地址：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="FtpServer" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="FtpServer" ErrorMessage=" *" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="FtpServer"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td  align="left"><bairong:help HelpText="FTP服务器端口" Text="FTP服务器端口：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="21" id="FtpPort" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="FtpPort" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
						ControlToValidate="FtpPort"
						ValidationExpression="\d+"
						Display="Dynamic"
						ErrorMessage="FTP端口必须为大于零的整数"
						runat="server"/>
          <asp:CompareValidator 
						ControlToValidate="FtpPort" 
						Operator="GreaterThan" 
						ValueToCompare="0" 
						Display="Dynamic"
						ErrorMessage="FTP端口必须为大于零的整数"
						runat="server"/></td>
      </tr>
      <tr>
        <td  align="left"><bairong:help HelpText="FTP用户名" Text="FTP用户名：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="FtpUserName" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="FtpUserName" ErrorMessage=" *" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="FtpUserName"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td  align="left"><bairong:help HelpText="FTP密码" Text="FTP密码：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" TextMode="Password" id="FtpPassword" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="FtpPassword" ErrorMessage=" *" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="FtpPassword"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td  align="left"><bairong:help HelpText="FTP根目录" Text="FTP根目录：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="FtpHomeDirectory" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="FtpHomeDirectory"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="PlaceHolder_Network" runat="server">
      <tr>
        <td  align="left"><bairong:help HelpText="网上邻居文件夹路径" Text="网上邻居文件夹路径：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="NetworkDirectoryPath" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="NetworkDirectoryPath" ErrorMessage=" *" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="NetworkDirectoryPath"
						ValidationExpression="^\\\\\w+\\[^']+" ErrorMessage="*" Display="Dynamic" />
          <br>
          示例：\\machine\share </td>
      </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="PlaceHolder_Local" runat="server">
      <tr>
        <td  align="left"><bairong:help HelpText="本机文件夹路径" Text="本机文件夹路径：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="LocalDirectoryPath" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="LocalDirectoryPath" ErrorMessage=" *" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="NetworkDirectoryPath"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <br>
          示例：D:\Utils\Backup </td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
