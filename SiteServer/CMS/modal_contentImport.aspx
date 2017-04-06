<%@ Page Language="C#" Trace="false" Inherits="SiteServer.CMS.BackgroundPages.Modal.ContentImport" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<title>导入内容</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<META http-equiv=content-type content=text/html;charset=utf-8>
<script type="text/javascript">
$(document).ready(function(){
     $('#import input:radio').change(function() {
         if (this.value == 'ContentZip'){
			 $('#tips').html('请选择后台导出的压缩包，系统能够将内容以及内容相关的图片、附件等文件一道导入');
		 } else if (this.value == 'ContentAccess'){
			 $('#tips').html('请选择Access文件，系统将导入Access文件对应的字段数据');
		 } else if (this.value == 'ContentExcel'){
			 $('#tips').html('请选择Excel文件，系统将导入Excel文件对应的字段数据');
		 } else if (this.value == 'ContentTxtZip'){
			 $('#tips').html('请选择以.txt结尾的纯文本文件的压缩包，系统将压缩包内的每一个文件作为一篇内容，文件中第一行作为内容标题，其余作为内容正文导入');
		 }
     });
  });
</script>
</head>
<body>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td align="left"><bairong:help HelpText="选择导入类型" Text="导入类型：" runat="server" ></bairong:help></td>
      <td align="left" id="import"><asp:RadioButtonList ID="ImportType" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Text="导入压缩包" Value="ContentZip"></asp:ListItem>
          <asp:ListItem Text="导入Access" Value="ContentAccess" Selected="true"></asp:ListItem>
          <asp:ListItem Text="导入Excel" Value="ContentExcel"></asp:ListItem>
          <asp:ListItem Text="导入TXT压缩包" Value="ContentTxtZip"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
    <td colspan="2" class="tips" id="tips">请选择Access文件，系统将导入Access文件对应的字段数据</td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="选择需要上传的栏目文件" Text="栏目文件：" runat="server"></bairong:help></td>
      <td align="left"><input type=file  id=myFile size="35" runat="server"/>
        <asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="遇到同名标题是否覆盖" Text="是否覆盖同名标题：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsOverride" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Text="覆盖" Value="True" Selected="true"></asp:ListItem>
          <asp:ListItem Text="不覆盖" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置从第几条开始导入" Text="从第几条开始导入：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" id="ImportStart" runat="server"/>
        (默认为第一条) </td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置共导入几条" Text="共导入几条：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" id="ImportCount" runat="server"/>
        (默认为全部导入) </td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置内容的状态" Text='状态：'  runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="ContentLevel" RepeatDirection="Horizontal" runat="server"/></td>
    </tr>
  </table>
  </td>
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
