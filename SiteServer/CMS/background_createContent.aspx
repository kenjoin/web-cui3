<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundCreateContent" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" language="javascript">
function selectAll(isChecked)
{
	for(var i=0; i<document.getElementById('<%=NodeIDList.ClientID%>').options.length; i++)
	{
		document.getElementById('<%=NodeIDList.ClientID%>').options[i].selected = isChecked;
	}
}
</script>
</HEAD>
<body>
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tab">
    <asp:Literal ID="ltlTabHeader" runat="server"></asp:Literal>
    &nbsp;<a href="http://help.siteserver.cn/manage/216/792.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看生成内容页帮助" align="absmiddle"></a>
    <div class="clearer"></div>
  </div>
  <DIV class="column">
    <div class="tips">选择需要生成内容页面的栏目后点击“生成选定内容”即可生成对应的内容页面。</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="选定栏目生成此栏目下的内容（可多选）" Text="生成选定的内容：" runat="server" ></bairong:help></td>
        <td align="left"><asp:ListBox ID="NodeIDList" SelectionMode="Multiple" Rows="19" runat="server"></asp:ListBox>
          &nbsp;&nbsp;
          <input id="CheckAll" type="checkbox" onClick="selectAll(this.checked);">
          <label for="CheckAll">全选</label></td>
      </tr>
      <tr  style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="160" align="left">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="点击按钮生成内容" Text="生成内容：" runat="server" ></bairong:help></td>
        <td align="left"> 生成范围：
          <asp:DropDownList ID="ChooseScope" runat="server"></asp:DropDownList>
          &nbsp;&nbsp;
          <asp:Button class="button" style="margin-bottom:0px;" id="CreateContentButton" text="生成选定内容" onclick="CreateContentButton_OnClick" runat="server" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="删除所有已生成的内容页面" Text="删除全部内容页面：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Button class="button" id="DeleteAllContentButton" text="删 除" onclick="DeleteAllContentButton_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
