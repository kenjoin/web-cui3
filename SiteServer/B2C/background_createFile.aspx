<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundCreateFile" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" language="javascript">
function selectAll(isChecked)
{
	for(var i=0; i<document.getElementById('<%=FileCollectionToCreate.ClientID%>').options.length; i++)
	{
		document.getElementById('<%=FileCollectionToCreate.ClientID%>').options[i].selected = isChecked;
	}
}
</script>
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
  <div class="columntitle">生成文件页</div>
    <div class="tips">选择需要生成的文件页后点击“生成选定文件”即可生成对应的文件页面。</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="请选择要生成的文件页（可多选）" Text="生成文件页：" runat="server" ></bairong:help></td>
        <td align="left"><asp:ListBox ID="FileCollectionToCreate" SelectionMode="Multiple" Rows="19" runat="server"></asp:ListBox>
          &nbsp;&nbsp;
          <input id="CheckAll" type="checkbox" onClick="selectAll(this.checked);">
          <label for="CheckAll">全选</label></td>
      </tr>
      <tr  style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="160" align="left">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="把所有文件页重新生成" Text="生成全部文件页：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Button class="button" style="margin-bottom:0px;" id="CreateFileButton" text="生成选定文件" onclick="CreateFileButton_OnClick" runat="server" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="删除所有已生成的文件页" Text="删除全部文件页：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Button class="button" id="DeleteAllFileButton" text="删 除" onclick="DeleteAllFileButton_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
