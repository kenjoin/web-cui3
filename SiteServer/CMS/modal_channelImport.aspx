﻿<%@ Page Language="C#" Trace="false" Inherits="SiteServer.CMS.BackgroundPages.Modal.ChannelImport" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<title>导入栏目</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<META http-equiv=content-type content=text/html;charset=utf-8>
</head>
<body>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td align="center" valign="top" ><table align="center" width="95%">
          <tr>
            <td align="left"><bairong:help HelpText="选择需要上传的栏目文件" Text="栏目文件：" runat="server"></bairong:help></td>
            <td align="left"><input type=file  id=myFile size="35" runat="server"/>
              <asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
          </tr>
          <tr>
            <td align="left"><nobr>
              <bairong:help HelpText="添加栏目的父栏目的名称" Text="父栏目：" runat="server" ></bairong:help>
              </nobr></td>
            <td align="left"><asp:DropDownList ID="ParentNodeID" runat="server"></asp:DropDownList></td>
          </tr>
          <tr>
            <td align="left"><bairong:help HelpText="遇到同名栏目是否覆盖" Text="是否覆盖同名栏目：" runat="server" ></bairong:help></td>
            <td align="left"><asp:RadioButtonList ID="IsOverride" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="覆盖" Value="True" Selected="true"></asp:ListItem>
                <asp:ListItem Text="不覆盖" Value="False"></asp:ListItem>
              </asp:RadioButtonList></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td align="center"><asp:Button class="button" id="Ok" text="导 入" onclick="Ok_OnClick" runat="server"/>
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>
